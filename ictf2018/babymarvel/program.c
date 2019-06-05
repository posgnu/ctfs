
#include <stdio.h>
#include <time.h>
#include <unistd.h>
#include <string.h>

#include "utils.h"
#include "lobby.h"


int main()
{
    unsigned char random_buf[32] = {0};
    unsigned char mangled_buf[256] = {0};
    unsigned char input_buf[32] = {0};

    setvbuf(stdout, NULL, _IONBF, 0);

    get_random_data(random_buf, sizeof(random_buf));

    printf("Let me come up with a story...\n");
    mangle(random_buf, mangled_buf);

    printf("OK, here is the happy ending of the story:\n");
    print_hex_data(mangled_buf + 256 - 32, 32);
    printf("\n");

    print_hex_data(random_buf, 32);
    puts("");

    printf("Yo, tell me what the story was:\n");
    fflush(stdout);
    read_hex_data(input_buf, 32);

    // Vuln
    if (!strncmp(random_buf, input_buf, 32)) {
        printf("Good guess!\n");
        printf("Now please enter the lobby.\n");

        lobby();
    } else {
        printf("WRONG!\n");
        _exit(-1);
    }
}

