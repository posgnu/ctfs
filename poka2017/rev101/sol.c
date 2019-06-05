#include <stdio.h>

int main() {
	char memory[] = {0xe5, 0x41, 0xe4, 0xcb, 0x32, 0xc0};
	int tmp = 0x3a880a49;

	int i;
	int shiift;
	for(i = 0; i <6; i++)
	{
		tmp = 0x343fd * tmp + 0x269ec3;
		printf("tmp : %x \n", tmp);
		shiift = tmp >> 16;
		printf("shift: %x \n", shiift);
		printf("result : %x \n", shiift^memory[i]);
	}

	return 0;
}
