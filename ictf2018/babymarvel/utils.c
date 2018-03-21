
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>


void get_random_data(unsigned char* buf, int n)
{
    int fd = open("/dev/urandom", O_RDONLY);
    if (fd < 0)
    {
        perror("open");
        _exit(-2);
    }
    else
    {
        ssize_t result = read(fd, (void *)buf, n);
        if (result < 0) {
            perror("read");
            _exit(-2);
        }
    }
}

void print_hex_data(unsigned char* buf, int n)
{
    for (int i = 0; i < n; ++i) {
        printf("%02x", buf[i]);
    }
}

void read_hex_data(unsigned char* buf, int n)
{
    for (int i = 0; i < n; ++i) {
        buf[i] = '\x0';
    }

    for (int i = 0; i < n; ++i) {
        int ch;
        ch = getchar();
        if (ch >= '0' && ch <= '9') {
            buf[i] = ch - '0';
        }
        else if (ch >= 'A' && ch <= 'F') {
            buf[i] = ch - 'A' + 10;
        }
        else if (ch >= 'a' && ch <= 'f') {
            buf[i] = ch - 'a' + 10;
        }
        else {
            return;
        }
        buf[i] *= 16;
        ch = getchar();
        if (ch >= '0' && ch <= '9') {
            buf[i] += ch - '0';
        }
        else if (ch >= 'A' && ch <= 'F') {
            buf[i] += ch - 'A' + 10;
        }
        else if (ch >= 'a' && ch <= 'f') {
            buf[i] += ch - 'a' + 10;
        }
        else {
            return;
        }
    }
}

void mangle(unsigned char* input_buf, unsigned char* output_buf)
{
    unsigned char pad0[32] =
        {0xeb, 0x88, 0x27, 0x41, 0x90, 0x1e, 0x33, 0x51, 0x98, 0x2b,
         0x13, 0x57, 0x18, 0x32, 0x15, 0x17, 0x23, 0x16, 0x41, 0x35,
         0x25, 0x31, 0x045, 0x76, 0x0a, 0xa5, 0xcc, 0x81, 0xa0, 0x6b,
         0xd4, 0x15};
    unsigned int pad1[32] = {7424712, 4551408,
                             8364500, 2965602, 2274639, 10661532,
                             11743595, 9478365, 5391897, 2014058,
                             9564604, 1930344, 7799217, 1852881,
                             6948032, 10182462, 1859234, 4734335,
                             6908536, 7021645, 10826047, 1851655,
                             3352213, 9091305, 7611253, 2920969,
                             7981175, 9321276, 2975866, 2423065,
                             11973828, 10777299};

    unsigned char tmp[32];

    memcpy(tmp, input_buf, 32);

    // shift -and-xor
    tmp[0] += pad0[0];
    tmp[0] ^= pad0[0];
    tmp[1] += pad0[1];
    tmp[1] ^= pad0[1];
    tmp[2] += pad0[2];
    tmp[2] ^= pad0[2];
    tmp[3] += pad0[3];
    tmp[3] ^= pad0[3];
    tmp[4] += pad0[4];
    tmp[4] ^= pad0[4];
    tmp[5] += pad0[5];
    tmp[5] ^= pad0[5];
    tmp[6] += pad0[6];
    tmp[6] ^= pad0[6];
    tmp[7] += pad0[7];
    tmp[7] ^= pad0[7];
    tmp[8] += pad0[8];
    tmp[8] ^= pad0[8];
    tmp[9] += pad0[9];
    tmp[9] ^= pad0[9];
    tmp[10] += pad0[10];
    tmp[10] ^= pad0[10];
    tmp[11] += pad0[11];
    tmp[11] ^= pad0[11];
    tmp[12] += pad0[12];
    tmp[12] ^= pad0[12];
    tmp[13] += pad0[13];
    tmp[13] ^= pad0[13];
    tmp[14] += pad0[14];
    tmp[14] ^= pad0[14];
    tmp[15] += pad0[15];
    tmp[15] ^= pad0[15];
    tmp[16] += pad0[16];
    tmp[16] ^= pad0[16];
    tmp[17] += pad0[17];
    tmp[17] ^= pad0[17];
    tmp[18] += pad0[18];
    tmp[18] ^= pad0[18];
    tmp[19] += pad0[19];
    tmp[19] ^= pad0[19];
    tmp[20] += pad0[20];
    tmp[20] ^= pad0[20];
    tmp[21] += pad0[21];
    tmp[21] ^= pad0[21];
    tmp[22] += pad0[22];
    tmp[22] ^= pad0[22];
    tmp[23] += pad0[23];
    tmp[23] ^= pad0[23];
    tmp[24] += pad0[24];
    tmp[24] ^= pad0[24];
    tmp[25] += pad0[25];
    tmp[25] ^= pad0[25];
    tmp[26] += pad0[26];
    tmp[26] ^= pad0[26];
    tmp[27] += pad0[27];
    tmp[27] ^= pad0[27];
    tmp[28] += pad0[28];
    tmp[28] ^= pad0[28];
    tmp[29] += pad0[29];
    tmp[29] ^= pad0[29];
    tmp[30] += pad0[30];
    tmp[30] ^= pad0[30];
    tmp[31] += pad0[31];
    tmp[31] ^= pad0[31];

    // expand
    for (int i = 0; i < 32; ++i) {
        int companion = (i + 1) % 32;
        output_buf[i] = (tmp[i] & 0xf) ^ (tmp[companion] & 0xf0);
        output_buf[i] ^= pad0[pad1[i] % 32];

        output_buf[i + 32] = (tmp[i] & 0xc) | (tmp[companion] & 0xc0);
        output_buf[i + 32] ^= pad0[pad1[(i + 1) % 32] % 32];
        output_buf[i + 32] += 0xcf;

        output_buf[i + 64] = (tmp[i] & 0x83) ^ (tmp[companion] & 0x15);
        output_buf[i + 64] ^= pad0[pad1[(i + 2) % 32] % 32];

        output_buf[i + 96] = (tmp[i] & 0x0f) | (tmp[companion] & 0x40);
        output_buf[i + 96] ^= pad0[pad1[(i + 3) % 32] % 32];

        output_buf[i + 128] = (tmp[i] & 0xcc) ^ (tmp[companion] & 0x01);
        output_buf[i + 128] ^= pad0[pad1[(i + 4) % 32] % 32];

        output_buf[i + 160] = (tmp[i] & 0xd0) | (tmp[companion] & 0x0d);
        output_buf[i + 160] ^= pad0[pad1[(i + 5) % 32] % 32];

        output_buf[i + 192] = (tmp[i] & 0x71) ^ (tmp[companion] & 0x2c);
        output_buf[i + 192] ^= pad0[pad1[(i + 6) % 32] % 32];

        output_buf[i + 224] = (tmp[i] & 0xf0) | (tmp[companion] & 0xf);
        output_buf[i + 224] += pad0[pad1[(i + 12) % 32] % 32];
        output_buf[i + 224] ^= pad0[pad1[(i + 7) % 32] % 32];
    }
}

