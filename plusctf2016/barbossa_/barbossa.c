#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){

	int code=0, Code=0;

	printf("ha!ha! hello jack. Did you bring the gold?\nGold code:");
	scanf("%d", &code);

	FILE *fp=fopen(".text1","r");
	fscanf(fp,"%d", &Code);

	if(code == Code){
		system("/bin/cat flag");
	}

	else{
	printf("NOP! Go to hell my friend!");
	}

	return 0;
}
