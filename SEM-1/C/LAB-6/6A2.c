#include<stdio.h>
void main(){
    float BS,GS,HRA,DA;
    printf("Enter Basic Salary: ");
    scanf("%f",&BS);
    if(BS>=30000){
        HRA=BS*0.3;
        DA=BS*0.95;
        GS=BS+HRA+DA;
        printf("Gross salary = %f",GS);
    }
    else if(BS>=20000){
        HRA=BS*0.25;
        DA=BS*0.9;
        GS=BS+HRA+DA;
        printf("Gross salary = %f",GS);
    }
    else if(BS>=10000){
        HRA=BS*0.2;
        DA=BS*0.8;
        GS=BS+HRA+DA;
        printf("Gross salary = %f",GS);
    }
}