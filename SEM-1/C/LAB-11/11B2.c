#include<stdio.h>
void main(){
	int i,n,count=1;
	printf("Enter a no. : ");
	scanf("%d",&n);
	for(i=1;i<=n;i++){
		n=n/10;
		count++;
	}
	printf("No. of digits = %d",count);
}
