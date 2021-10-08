#include<stdio.h>

int main(void)
{
	int a = 5, b = 10, c = 15;
	
	printf("a = %d, b = %d, c = %d\n", a, b, c);
	printf("\ta + b++ - --c 의 결과 = %5d\n\n", a + b++, - --c);
	
	printf("a = %d, b = %d, c = %d\n", a, b, c);
	printf("\t--a + ++b %% 3 의 결과 = %5d\n\n", --a + ++b % 3);
	printf("a = %d, b = %d, c = %d\n", a, b, c);
	
	return 0;
}


int void() 
{
	int a = 10, b = 20, c = 3;
	printf("a = %d, b = %d, c = %d\n\n", a, b, c);
	
	//단축 연산인 &&는 앞의 결과가 0(거짓)이면 뒤를 평가하지 않음
	c = (a++ == 11) && (b++ == 20);
	printf("c = ( a++ == 11) && (b++ == 20) 연산 후 각 변수값> \n");
	printf("a = %d, b = %d, c = %d\n", a, b, c);
	
	//단축 연산인 &&는 앞의 결과가 1(참)이면 뒤도 평가하여 &&을 평가함 
	c = (a++ == 11) && (b++ == 20);
	printf("c = ( a++ == 11) && (b++ == 20) 연산 후 각 변수값> \n");
	printf("a = %d, b = %d, c = %d\n", a, b, c);
	
	//단축 연산인 ||는 앞의 결과가 1(참)이면 뒤를 평가하지 않음
	c = (a++ == 12) || (b++ == 21);
	printf("c = ( a++ == 12) || (b++ == 21) 연산 후 각 변수값> \n");
	printf("a = %d, b = %d, c = %d\n", a, b, c);
	
	//단축 연산인 ||는 앞의 결과가 0(거짓)이면 뒤도 평가하여 ||을 평가함
	c = (a++ == 12) || (b++ == 22);
	printf("c = ( a++ == 12) || (b++ == 22) 연산 후 각 변수값> \n");
	printf("a = %d, b = %d, c = %d\n", a, b, c);
}
