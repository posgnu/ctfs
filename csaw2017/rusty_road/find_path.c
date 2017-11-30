#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define LIMIT 20

int ***maps;
void got_the_fucking_flag(int result, int col, int row, char *cmd)//result는 밖에서 검사하기
{

	if (col == 0 && row == 0) {
		printf("%s", cmd);
		exit(0);
	}
	return;
}

void operate(char op, char *cmd, int row, int col, int result)
{
	char n_cmd[31] = { 0, };
	strcpy(n_cmd, cmd);

	if (op == 'U')
	{
		strcat(n_cmd, "U");
		result -= maps[0][row][col];
		row -= 1;
	}
	else if (op == 'D')
	{
		strcat(n_cmd, "D");
		result -= maps[1][row][col];
		row += 1;
	}
	else if (op == 'R')
	{
		strcat(n_cmd, "R");
		result -= maps[2][row][col];
		col -= 1;
	}
	else if (op == 'L')
	{
		strcat(n_cmd, "L");
		result -= maps[3][row][col];
		col += 1;
	}


	/*important*/
	int len = strlen(cmd);

	if ((row + col) > (LIMIT - len))
		return;
	if (result < 0)
		return;

	/*important*/

	printf("%s\n", n_cmd);//출력하고 검사한다.
	if (result == 2)
		got_the_fucking_flag(result, col, row, n_cmd);

//길이 limit를 체크한다.
	if (len == LIMIT)
		return;

	if (row != 0)
		operate('U', n_cmd, row, col, result);
	if (row != 9)
		operate('D', n_cmd, row, col, result);
	if (col != 0)
		operate('R', n_cmd, row, col, result);
	if (col != 9)
		operate('L', n_cmd, row, col, result);
}
int main()
{
	int a_arr[401] = { 0, };
	FILE *fp = fopen("board.txt", "r");
	char tmp[50] = { 0, };
	char *temp = 0;
	/*
	int U[10][10] = { 0, };
	int D[10][10] = { 0, };
	int R[10][10] = { 0, };
	int L[10][10] = { 0, };*/
	int min = 0;
	int max = 400;
	/*
	int(**maps)[4] = { 0 };
	maps[0] = U;
	maps[1] = D;
	maps[2] = R;
	maps[3] = L;*/

	maps = (int***)malloc(sizeof(int**) * 4);
	for (int i = 0; i < 4; i++)
		maps[i] = (int**)malloc(sizeof(int*) * 10);

	for (int i = 0; i < 4; i++)
		for (int j = 0; j < 10; j++)
			maps[i][j] = (int*)malloc(sizeof(int) * 10);



	for (int i = 0; i < 401; i++)
	{
		fgets(tmp, 50, fp);
		a_arr[i] = strtol(tmp, temp, 10);
	}

	for (int i = 0; i < 4; i++)
		for (int j = 0; j<10; j++)
			for (int k = 0; k < 5; k++)
			{
				maps[i][j][2 * k] = a_arr[min];
				maps[i][j][2 * k + 1] = a_arr[max];
				min += 1;
				max -= 1;
			}

	for (int i = 0; i < 4; i++)
		maps[i][0][0] = 2;
	

	operate('U', "", 9, 9, 25132);
	operate('R', "", 9, 9, 25132);
	
	return 0;
}
