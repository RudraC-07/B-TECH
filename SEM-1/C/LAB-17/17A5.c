#include<stdio.h>
void main(){
    int n;
	printf("Enter size of array : ");
	scanf("%d",&n);
	int a[n],i,*r;
	for(i=0;i<n;i++){
		printf("Enter elements in array : ");
		scanf("%d",&a[i]);
	}
    for(i=0;i<n;i++){
		r=&a[i];
        printf("%d\n",*r);
	}
}