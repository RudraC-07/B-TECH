#include<stdio.h>
void main(){
	int n;
	printf("Enter size of array : ");
	scanf("%d",&n);
	int a[n],i,ce=0,co=0;
	for(i=0;i<n;i++){
		printf("Enter elements in array : ");
		scanf("%d",&a[i]);
	}
	for(i=0;i<n;i++){
		if(a[i]%2==0){
			ce++;
		}
		else if(a[i]%2!=0){
			co++;
		}
	}
	printf("Even elements = %d\n",ce);
	printf("Odd elements = %d",co);
}
