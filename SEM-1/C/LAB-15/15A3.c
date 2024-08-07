#include<stdio.h>
void main(){
	int n;
	printf("Enter size of array : ");
	scanf("%d",&n);
	int a[n],i,c=0;
	for(i=0;i<n;i++){
		printf("Enter elements in array : ");
		scanf("%d",&a[i]);
	}
	for(i=0;i<n;i++){
		if(a[i]%3==0){
			c++;
		}
	}
	printf("No. divisible by 3 = %d",c);
}
