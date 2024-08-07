#include<stdio.h>
void main(){
    int a,b,*p,*q,*r;
    printf("Enter a no. : ");
    scanf("%d",&a);
    printf("Enter a no. : ");
    scanf("%d",&b);
    p=&a;
    q=&b;
    *r=*p+*q;
    printf("Sum = %d",*r);
}