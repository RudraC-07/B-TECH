#include<stdio.h>

void main(){
    int n,i,c = 0;

    printf("Enter a no. : ");
    scanf("%d",&n);

    while(n > 0){
        c++;
        n = n/10;
    }

    printf("Number count = %d",c);
}