#include<stdio.h>
void main(){
    int a=10,*p;
    p=&a;
    printf("%d %d\n",*p,p);

    float b=1.7,*q;
    q=&b;
    printf("%f %d\n",*q,q);

    double c=2.99,*r;
    r=&c;
    printf("%lf %d\n",*r,r);

    char d='r',*s;
    s=&d;
    printf("%c %d",*s,s);
}