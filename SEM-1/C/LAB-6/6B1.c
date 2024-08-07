#include<stdio.h>
void main(){
	float TB,SC,U;
	printf("Enter an unit : ");
	scanf("%f",&U);
	if(U<=50){
		TB=U*0.50;
		SC=TB*0.20;
		TB+=SC;
		printf("Total bill = %f",TB);
	}
	else if(U>=51 && U<=150){
		TB=50*0.50+(U-50)*0.75;
		SC=TB*0.20;
		TB+=SC;
		printf("Total bill = %f",TB);
	}
	else if(U>=151 && U<=250){
		TB=50*0.50+100*0.75+(U-150)*1.20;
		SC=TB*0.20;
		TB+=SC;
		printf("Total bill = %f",TB);
	}
	else{
		TB=50*0.50+100*0.75+100*1.20+(U-250)*1.50;
		SC=TB*0.20;
		TB+=SC;
		printf("Total bill = %f",TB);
	}
}
