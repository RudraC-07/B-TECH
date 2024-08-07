#include<stdio.h>
void main(){
	int i,j,n,c=0;
	int a[5],b[5];
	for(i=0;i<5;i++){
		printf("Enter Height : ");
		scanf("%d",&a[i]);
	}
	i=0;
	for(i=0;i<5;i++){
		printf("Enter Weight : ");
		scanf("%d",&b[i]);
	}
	for(i=0;i<5;i++){
		if(a[i]>170){
			if(b[i]<50){
				c++;
			}
		}
	}
	printf("No. of persons = %d",c);
}
