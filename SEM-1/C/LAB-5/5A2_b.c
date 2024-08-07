#include<stdio.h>
void main(){
	int a,b;
	printf("Enter value a:");
	scanf("%d",&a);
	printf("Enter value b:");
	scanf("%d",&b);
	a=a+b;
	b=a-b;
	a=a-b;
	printf("New numbers: a=%d and b=%d",a,b);
}
