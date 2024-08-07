#include<stdio.h>
void main(){
	int a,b;
	char O;
	printf("Enter an operator : ");
	scanf("%c",&O);
	printf("Enter a number a : ");
	scanf("%d",&a);
	printf("Enter a number b: ");
	scanf("%d",&b);
	if(b!=0){
	switch(O){
		case '+':
			printf("Sum = %d",a+b);
			break;
		case '-':
			printf("Difference = %d",a-b);
			break;
		case '*':
			printf("Multiplication = %d",a*b);
			break;
		case '/':
			printf("Division = %d",a/b);
			break;
		default:
			printf("Invalid Operator");
	}
	}
	else{
		printf("Enter valid number b.");
	}
}
