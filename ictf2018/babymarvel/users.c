#include <linux/limits.h>
#include <stdio.h>
#include <sys/types.h>
#include <dirent.h>
#include <string.h>
#include <sys/stat.h>
#include <errno.h>
#include <limits.h>


int user_exists(char* username)
{
    char directory[PATH_MAX];
    DIR* dir = NULL;

    sprintf(directory, "./pastes/%s", username);
    dir = opendir(directory);
    if (dir) {
        closedir(dir);
        return 1;
    }
    else {
        // Cannot open the director for whatever reason
        return 0;
    }
}

int load_password(char* username, char* password)
{
    char pass_path[PATH_MAX];
    FILE* fp = NULL;

    sprintf(pass_path, "./pastes/%s/password", username);
    fp = fopen(pass_path, "rb");
    if (fp == NULL) {
        return -1;
    }

    fread(password, 1, 4096, fp); // Vuln -- read as much as possible...

    fclose(fp);

    return 0;
}

int set_password(char* username, char* password)
{
    char pass_path[PATH_MAX];
    char directory[PATH_MAX];
    FILE* fp = NULL;
    int ret;

    // Make sure the directory exists
    ret = mkdir("./pastes", 0700);
    if (!(ret == 0 || errno == EEXIST)) {
        perror("mkdir");
        return -1;
    }
    sprintf(directory, "./pastes/%s", username);
    ret = mkdir(directory, 0700);
    if (!(ret == 0 || errno == EEXIST)) {
        perror("mkdir");
        return -1;
    }

    sprintf(pass_path, "./pastes/%s/password", username);
    fp = fopen(pass_path, "wb");
    if (fp == NULL) {
        return -1;
    }

    fwrite(password, 1, strlen(password), fp);

    fclose(fp);

    return 0;
}

