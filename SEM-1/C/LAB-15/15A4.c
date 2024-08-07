#include<stdio.h>
void main(){
	int n;
	printf("Enter size of array : ");
	scanf("%d",&n);
	
	int a[n],i,c=0,b;
	for(i=0;i<n;i++){
		printf("Enter elements in array : ");
		scanf("%d",&a[i]);
	}
	
	printf("Enter element to check : ");
	scanf("%d",&b);
	
	for(i=0;i<n;i++){
		if(b==a[i]){
			c++;
		}
	}
	
	if(c==1){
		printf("Yes your element is in array.");
	}
	else{
		printf("No your element is not in array.");
	}
}
