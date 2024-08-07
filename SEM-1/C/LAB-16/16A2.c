#include<stdio.h>
void main(){
	int a[3][3];
	int i,j,cp=0,cn=0,z=0;
	for (i=0;i<3;i++){
		for(j=0;j<3;j++){
			printf("Enter elements a[%d][%d] : ",i,j);
			scanf("%d",&a[i][j]);
		}
		printf("\n");
	}
	for (i=0;i<3;i++){
		for(j=0;j<3;j++){
			if(a[i][j]>0){
				cp++;
			}
			else if(a[i][j]<0){
				cn++;
			}
			else if(a[i][j]==0){
				z++;
			}
		}
	}
	printf("No. of positive elements = %d\n",cp);
	printf("No. of negative elements = %d\n",cn);
	printf("No. of zero elements = %d",z);
}
