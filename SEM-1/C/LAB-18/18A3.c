#include<stdio.h>
void interest(float,float,float);
void main(){
    float p,r,t;
    printf("Enter principal : ");
    scanf("%f",&p);
    printf("Enter rate of interest : ");
    scanf("%f",&r);
    printf("Enter time : ");
    scanf("%f",&t);
    interest(p,r,t);
}
void interest(float x,float y,float z){
    float a;
    a=(x*y*z)/100;
    printf("Simple interest = %f",a);
}