#include<stdio.h>
void main(){
    int a=10,*p;
    p=&a;
    printf("%d %d",*p,p);
}