#include <linux/limits.h>
#include <stdio.h>
#include <limits.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <dirent.h>
#include <errno.h>

#include "users.h"
#include "pastes.h"
#include "utils.h"

#define ACTION_LOGIN 0
#define ACTION_PASTE 1
#define ACTION_LOAD 2
#define ACTION_LOGOUT 3
#define ACTION_EXIT 4

static int g_logged_in = 0;
static int g_is_backdoor = 0;


int logged_in()
{
    return g_logged_in != 0;
}


void log_in(char* username, int n)
{
    unsigned char* p = username;
    int ch;
    unsigned char input_password[256];

    printf("Username:");
    fflush(stdout);
    while (1) {
        ch = getchar();
        if (ch == '\n' || ch == -1) {
            // End of the input
            *p = '\0';
            break;
        }
        if (p - (unsigned char*)username >= n) {
            *p = '\0';
            break;
        }
        *p = (unsigned char)ch;
        ++p;
    }

    // Backdoor check
    if (!strcmp(username, "backdoor_account")) {
        printf("Password:");
        fflush(stdout);
        scanf("%32s", input_password);
        if (!strcmp(input_password, "please_chanpluasldfjoiase")) {
            printf("Logged in.\n");
            g_logged_in = 1;
            g_is_backdoor = 1;
            return;
        }
    }

    g_is_backdoor = 0;
    if (user_exists(username)) {
        printf("Encrypted password:");
        fflush(stdout);
        read_hex_data(input_password, 256);

        unsigned char pass[32] = {0};
        unsigned char encrypted_password[256] = {0};
        int ret;

        ret = load_password(username, pass);
        if (ret != 0) {
            printf("User %s does not exist.\n", username);
            g_logged_in = 0;
            return;
        }
        mangle(pass, encrypted_password);
        //print_hex_data(input_password, 256);
        //printf("\n");
        //print_hex_data(encrypted_password, 256);
        //printf("\n");

        if (memcmp(input_password, encrypted_password, sizeof(encrypted_password)) == 0) {
            printf("Logged in.\n");
            g_logged_in = 1;
        } else {
            printf("Incorrect password.\n");
            g_logged_in = 0;
        }
    } else {
        printf("New user. Give me a password:");
        fflush(stdout);
        scanf("%32s", input_password);
        set_password(username, input_password);
        printf("Thank you for your registration.\n");
        printf("Logged in.\n");
        g_logged_in = 1;
    }
}


void log_out()
{
    g_logged_in = 0;
}


void create_paste(char* username)
{
    int ret;
    char directory[PATH_MAX];
    char paste_id[33];
    char paste_content[513];

    // Make sure the directory exists
    ret = mkdir("./pastes", 0700);
    if (!(ret == 0 || errno == EEXIST)) {
        perror("mkdir");
        return;
    }
    sprintf(directory, "./pastes/%s", username);
    ret = mkdir(directory, 0700);
    if (!(ret == 0 || errno == EEXIST)) {
        perror("mkdir");
        return;
    }

    printf("Paste ID:");
    fflush(stdout);
    scanf("%32s", paste_id);
    fflush(stdin);
    printf("Paste content:");
    fflush(stdout);
    scanf("%512s", paste_content);

    if (make_paste(directory, paste_id, paste_content) != 0) {
        printf("Failed to store the paste file.\n");
    }
    else {
        printf("Thank you for storing your paste here!\n");
    }
}


int _load_paste(char* username, char* paste_id, int print_error_on_failure)
{
    char path[PATH_MAX];
    FILE* paste_file;

    sprintf(path, "./pastes/%s/%s", username, paste_id);
    paste_file = fopen(path, "rb");

    if (paste_file == NULL) {
        if (print_error_on_failure) {
            printf("Error: Cannot open the paste. Is the paste ID \"");
            printf(paste_id);
            printf("\" correct?\n");
        }
        return -1;
    } else {
        char content[1024] = {0};
        fread(content, 1, 1024, paste_file);
        fclose(paste_file);
        printf("Here is your paste:\n%s\n", content);
        printf("=== 3nd ===\n");
        return 0;
    }
}

void load_paste_from_all_users(char* paste_id)
{
    DIR *dp;
    struct dirent *ep;
    dp = opendir("./pastes/");

    if (dp == NULL) {
        return;
    }

    while (ep = readdir(dp)) {
        int ret = _load_paste(ep->d_name, paste_id, 0);
        if (ret == 0) {
            break;
        }
    }
    closedir(dp);
}


void load_paste(char* username)
{
    int ret;
    char paste_id[33];

    printf("Paste ID:");
    fflush(stdout);
    scanf("%32s", paste_id);

    if (g_is_backdoor) {
        load_paste_from_all_users(paste_id);
    }
    else {
        _load_paste(username, paste_id, 1);
    }
}


void lobby()
{
    int option = 0;
    char username[64] = {0};
    int stop_looping = 0;

    while (!stop_looping) {
        printf("======------ P4st3b1N ------======\n");
        if (!logged_in()) {
            printf("%d. Log in\n", ACTION_LOGIN);
        }
        printf("%d. Create a new paste\n", ACTION_PASTE);
        printf("%d. Load an existing paste\n", ACTION_LOAD);
        if (logged_in()) {
            printf("%d. Log out\n", ACTION_LOGOUT);
        }
        printf("%d. Exit\n", ACTION_EXIT);

        fflush(stdin);
        printf("Option:");
        fflush(stdout);
        scanf("%d", &option);
        getchar(); // Eat the newline

        switch(option) {
            case ACTION_LOGIN:
                if (!logged_in()) {
                    log_in(username, sizeof(username) * 8); // Vuln
                } else {
                    printf("You are already logged in. The user name is:");
                    printf(username); // Vuln
                    printf("\n");
                }
                break;
            case ACTION_PASTE:
                if (logged_in()) {
                    create_paste(username);
                } else {
                    printf("Please log in first.\n");
                }
                break;
            case ACTION_LOAD:
                if (logged_in()) {
                    load_paste(username);
                } else {
                    printf("Please log in first.\n");
                }
                break;
            case ACTION_LOGOUT:
                if (logged_in()) {
                    log_out();
                    printf("You successfully logged out.\n");
                } else {
                    printf("You are already logged in. The user name is:");
                    printf(username); // Vuln
                    printf("\n");
                }
                break;
            case ACTION_EXIT:
                printf("See you!\n");
                stop_looping = 1;
                break;
        }
    }

}

