#include<stdio.h>
void main(){
	int i,n,a=1;
	printf("Enter val. n : ");
	scanf("%d",&n);
	for(i=1;i<=n;i++){
		a=a*i;
	}
	printf("Factorial = %d",a);
}
