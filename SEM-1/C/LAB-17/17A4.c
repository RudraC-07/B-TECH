#include<stdio.h>
void main(){
    int a,b,*p,*q,*temp;
    printf("a = ");
    scanf("%d",&a);
    printf("b = ");
    scanf("%d",&b);
    p=&a;
    q=&b;
    temp=p;
    p=q;
    q=temp;
    printf("New a = %d\n",*p);
    printf("New b = %d",*q);
}