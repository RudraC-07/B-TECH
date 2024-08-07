#include<stdio.h>
void main(){
	int n;
	printf("Enter size of array : ");
	scanf("%d",&n);
	int a[n],i,min,max=0,sum=0;
	float avg=0;
	for(i=0;i<n;i++){
		printf("Enter elements in array : ");
		scanf("%d",&a[i]);
	}
	for(i=0;i<n;i++){
		if(a[i]>max){
		max=a[i];
		}
	}
	for(i=0;i<n;i++){
		if(min>a[i]){
		min=a[i];
		}	
	}
	for(i=0;i<n;i++){
		sum=sum+a[i];
	}
	printf("Min. = %d\n",min);
	printf("Max. = %d\n",max);
	printf("Sum = %d\n",sum);
	avg=sum/n;
	printf("Avg. = %f",avg);
}
