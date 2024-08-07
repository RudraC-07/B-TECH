#include<stdio.h>
void main(){
	int n;
	printf("Enter size of array : ");
	scanf("%d",&n);
	int a[n],i,b[n];
	for(i=0;i<n;i++){
		printf("Enter elements in array : ");
		scanf("%d",&a[i]);
		b[i]=a[i];
	}
	for(i=0;i<n;i++){
		printf("%d\n",b[i]);
	}
}
