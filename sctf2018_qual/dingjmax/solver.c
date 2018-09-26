#include <stdio.h>
#include <stdint.h>
#include <string.h>
#define _CRT_SECURE_NO_WARNINGS

int64_t small(int8_t a1);
int64_t sub(int8_t flag_char, int8_t num);
int64_t make_flag();
int64_t whatthefuck(int a1);


char flag[] = "qN7BuRx4rElDv84dgNaaNBanZf0HSHFjqOvbkFfgTRg3r";
char stringset[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_!";
char node_list[2132];
char vv1;
char v2;
char numto[64];
char board_stick[20];

int main()
{
	int perfect = 0;
	FILE *fp = fopen("Text.txt", "r");
	fscanf(fp, "%s", node_list);

	for (int i = 0; i < 64; i++)
		numto[i] = i;

	for (int i = 0; i < 20; i++)
		board_stick[i] = 'e';

	int counter = 0;

	while (counter <= 42259)
	{
		if ((counter % 20) == 0)
		{
			printf("%d\n", counter);
			for (int k = 19; k > 0; --k)
				board_stick[k] = board_stick[k - 1];
			board_stick[0] = node_list[counter / 20];

			if (board_stick[19] == 'd')
			{
				whatthefuck('d' * counter);
				make_flag();
				perfect++;
			}
			else if (board_stick[19] == 'f')
			{
				whatthefuck('f' * counter);
				make_flag();
				perfect++;
			}
			else if (board_stick[19] == 'j')
			{
				whatthefuck('j' * counter);
				make_flag();
				perfect++;
			}
			else if (board_stick[19] == 'k')
			{
				whatthefuck('k' * counter);
				make_flag();
				perfect++;
			}

		}
		counter++;
	}

	printf("%s", flag);

	getchar();
}

int64_t small (int8_t a1)
{
	int i;

	for (i = 0; i < 64; i++)
	{
		if (a1 == stringset[i])
			return (unsigned int)i;
	}

	printf("error\n");
	return -1;
}

int64_t sub(int8_t flag_char, int8_t num)
{
	return stringset[(small(num) ^ small(flag_char)) % 64];
}

int64_t make_flag()
{
	int v4 = strlen(flag);
	int64_t result;

	for (int i = 0; ;i++)
	{
		result = i;
		if (i >= v4)
			break;
		flag[i] = sub(flag[i], whatthefuck(1));
	}

	return result;
}

int64_t whatthefuck(int a1)
{
	char v1;
	int8_t v3;

	for (int i = 0; a1 > i; ++i)
	{
		vv1 = ((int8_t)vv1 + 1) % 64;
		v2 = ((int8_t)v2 + (int8_t)numto[(int8_t)vv1]) % 64;
		v1 = numto[(int8_t)vv1];
		numto[(int8_t)vv1] = numto[(int8_t)v2];
		numto[(int8_t)v2] = v1;
		v3 = numto[((int8_t)numto[(int8_t)vv1] + (int8_t)numto[(int8_t)v2]) % 64];
	}

	return (int8_t)stringset[v3];
}
