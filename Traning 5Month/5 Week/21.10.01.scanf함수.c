#include<stdio.h>


int main(void)
{
	int a = 87;
	int b;
	int c;
	
	printf("%o\n", a);
	printf("%x\n", a);
	
	printf("정수를 입력해 주세요\n");
	scanf("%d", &b);
	
	printf("%o\n", b);
	printf("%x\n", b);
	
	printf("정수를 입력해 주세요\n");
	scanf("%o", &c);
	
	printf("%o\n", c);
	printf("%d\n", c);
	printf("%x\n", c);
	
	return 0;
}

