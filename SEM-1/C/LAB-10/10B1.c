#include<stdio.h>
void main(){
	int i=1,n,sum=0;
	printf("Enter a no. : ");
	scanf("%d",&n);
	while(i<n){
		if(n%i==0){
			sum=sum+i;
		}
		i++;
	}
	if(sum==n){
		printf("Perfect number.");
	}
	else{
		printf("Not perfect number.");
	}
}
