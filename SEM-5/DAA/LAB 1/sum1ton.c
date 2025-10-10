#include<stdio.h>

void main(){
    int n,i,sum = 0;

    printf("Enter a no. : ");
    scanf("%d",&n);

    for(i=1;i<=n;i++){
        sum+=i;
    }

    printf("Sum = %d",sum);
}