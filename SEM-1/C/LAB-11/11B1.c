#include<stdio.h>
void main(){
	int a=0,b=1,c,i,n;
	printf("Enter no. of terms : ");
	scanf("%d",&n);
	printf("Fibonacci series : %d %d ",a,b);
	for(i=3;i<=n;i++){
		c=a+b;
		printf("%d ",c);
		a=b;
		b=c;
	}
}
