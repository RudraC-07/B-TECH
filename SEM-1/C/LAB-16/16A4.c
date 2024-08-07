#include<stdio.h>
void main(){
	int a[3][3];
	int i,j;
	for (i=0;i<3;i++){
		for(j=0;j<3;j++){
			printf("Enter elements a[%d][%d] : ",i,j);
			scanf("%d",&a[i][j]);
		}
		printf("\n");
	}
	int b[3][3];
	int r,c;
	for (r=0;r<3;r++){
		for(c=0;c<3;c++){
			printf("Enter elements b[%d][%d] : ",r,c);
			scanf("%d",&b[r][c]);
		}
		printf("\n");
	}
	int s[3][3];
	int p,q;
	for (p=0;p<3;p++){
		for(q=0;q<3;q++){
			s[p][q]=a[p][q]+b[p][q];
		}
	}
	for (i=0;i<3;i++){
		for(j=0;j<3;j++){
			printf("%d ",a[i][j]);
		}
		printf("\n");
	}
	printf("\n");
	for (r=0;r<3;r++){
		for(c=0;c<3;c++){
			printf("%d ",b[r][c]);
		}
		printf("\n");
	}
	printf("\n");
	for (p=0;p<3;p++){
		for(q=0;q<3;q++){
			printf("%d ",s[p][q]);
		}
		printf("\n");
	}
}