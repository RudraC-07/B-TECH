#include<stdio.h>
void main(){
	int a;
	printf("Enter a number: ");
	scanf("%d",&a);
	if(a&1==1){
		printf("Number is odd.");
	}
	else{
		printf("Number is even.");
	}
}
