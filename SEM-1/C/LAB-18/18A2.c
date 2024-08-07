#include<stdio.h>
void maxmin(int,int);
void main(){
    int a,b;
    printf("Enter a number a : ");
    scanf("%d",&a);
    printf("Enter a number b : ");
    scanf("%d",&b);
    maxmin(a,b);
}
void maxmin(int x,int y){
    if(x>y){
        printf("Number a is greater.");
    }
    else{
        printf("Number b is greater.");
    }
}