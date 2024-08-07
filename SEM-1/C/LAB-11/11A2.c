#include<stdio.h>
void main(){
	int i,n,sum=0;
	printf("Enter val. n : ");
	scanf("%d",&n);
	for(i=1;i<=n;i++){
		sum=sum+i;
	}
	printf("Sum = %d",sum);
}
