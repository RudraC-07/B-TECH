#include<stdio.h>
void main(){
	int n;
	printf("Enter size of array : ");
	scanf("%d",&n);
	int a[n],i,cn=0,cp=0;
	for(i=0;i<n;i++){
		printf("Enter elements in array : ");
		scanf("%d",&a[i]);
	}
	for(i=0;i<n;i++){
		if(a[i]<0){
			cn++;
		}
		else if(a[i]>0){
			cp++;
		}
	}
	printf("Negative elements = %d\n",cn);
	printf("Positive elements = %d",cp);
}
