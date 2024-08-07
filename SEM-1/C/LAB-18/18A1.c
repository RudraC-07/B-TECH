#include<stdio.h>
void add(int,int);
void main(){
    int a,b;
    printf("Enter value of a : ");
    scanf("%d",&a);
    printf("Enter value of b : ");
    scanf("%d",&b);
    add(a,b);
}
void add(int x,int y){
    printf("Addition of numbers = %d",x+y);
}