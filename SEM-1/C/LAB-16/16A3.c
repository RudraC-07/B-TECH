#include<stdio.h>
void main(){
	int a[20][2];
	int i,j;
	for (i=0;i<20;i++){
		for(j=0;j<2;j++){
			printf("Enter elements a[%d][%d] : ",i,j);
			scanf("%d",&a[i][j]);
		}
		printf("\n");
	}
	for (i=0;i<20;i++){
		for(j=0;j<2;j++){
			printf("%d ",a[i][j]);
		}
		printf("\n");
	}
}
