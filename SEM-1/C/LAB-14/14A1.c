#include<stdio.h>
void main(){
	int n;
	printf("Enter size of array : ");
	scanf("%d",&n);
	int a[n],i,c,b;
	for(i=0;i<n;i++){
		printf("Enter elements in array : ");
		scanf("%d",&a[i]);
	}
	for(i=0;i<n;i++){
		printf("%d\n",a[i]);
	}
	for(i=5-1;i>=0;i--){
		printf("%d\n",a[i]);
	}
}
