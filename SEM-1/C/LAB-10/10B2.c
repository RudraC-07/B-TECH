#include<stdio.h>
void main(){
	int i=2,n,flag=0;
	printf("Enter a no. : ");
	scanf("%d",&n);
	while(i<=n/2){
		if(n%i==0){
			flag=1;
			break;
		}
		i++;
	}
	if(flag==0){
		printf("Prime number.");
	}
	else{
		printf("Not prime number.");
	}
}
