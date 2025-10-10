#include<stdio.h>

void main(){
    int n,i,fac = 1;

    printf("Enter a no. : ");
    scanf("%d",&n);

    for(i=1;i<=n;i++){
        fac*=i;
    }

    printf("Factorial = %d",fac);
}