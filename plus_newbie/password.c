#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void wrong() {
	printf("wrong!\n");
	return -1;
}

int a[2] = {1, 1};
int b[24];
int num;
char buf[100];
int arith[48];
int result[26];

int main() {
	int c = 0;
	int tmp = 0;

	printf("PASSWORD: ");
	scanf("%99s", buf);

	if(strlen(buf) != 8){
		wrong();
	}
	num = atoi(buf);

	for (int i = 0; i < 24; i++) {
		b[i] = num % 2;
		num = num / 2;
	}

	for (int i = 0; i < 2; i++)
		for (int j = 0; j < 24; j++) {
			arith[i * 24 + j] = a[i] & b[j];
		}

	result[0] = arith[0];
	for (int i = 1; i < 24; i++) {
		tmp = c;
		result[i] = arith[i] ^ arith[23 + i];
		c = (arith[i] & arith[24 + i]) | (result[i] & c);
		result[i] = result[i] ^ tmp;
	}
	result[24] = c ^ arith[24 + 23];
	result[25] = c & arith[24 + 23];	
	
	
					

	return 0;
}
