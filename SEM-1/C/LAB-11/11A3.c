#include<stdio.h>
void main(){
	int i,n;
	printf("Enter a no. for table : ");
	scanf("%d",&n);
	for(i=1;i<=10;i++){
		printf("%d*%d=%d\n",n,i,i*n);
	}
}
