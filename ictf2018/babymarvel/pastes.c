#include <linux/limits.h>
#include <stdio.h>
#include <string.h>
#include <limits.h>


int make_paste(char* directory, char* paste_id, char* paste_content)
{
    char path[PATH_MAX] = {0};
    FILE *fp = NULL;

    sprintf(path, "%s/%s", directory, paste_id);

    fp = fopen(path, "wb");
    if (fp == NULL) {
        // Cannot create the file for whatever reason
        return -1;
    }

    fwrite(paste_content, strlen(paste_content), 1, fp);

    fclose(fp);

    return 0;
}
