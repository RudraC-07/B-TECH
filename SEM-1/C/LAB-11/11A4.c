#include<stdio.h>
void main(){
	int i,a=1,x,y;
	printf("Enter val. of X : ");
	scanf("%d",&x);
	printf("Enter val. of Y : ");
	scanf("%d",&y);
	for(i=1;i<=y;i++){
		a=a*x;
	}
	printf("X^Y=%d",a);
}
