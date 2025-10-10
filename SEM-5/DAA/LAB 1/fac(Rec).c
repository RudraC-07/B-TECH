#include<stdio.h>

int fac(int n);

void main(){
    int n;

    printf("Enter a no. : ");
    scanf("%d",&n);

    int fact = fac(n);

    printf("Factorial = %d",fact);
}

int fac(int n){
    if(n==0 || n==1){
        return 1;
    }

    else{
        return fac(n-1)*n;
    }
}