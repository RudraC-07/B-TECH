#include<stdio.h>
void main(){
    int last,sum,n;
    printf("Enter a val. : ");
    scanf("%d",&n);
    last=n%10;
    while(n>10){
        n=n/10;
    }
    sum=last+n;
    printf("Sum = %d",sum);
}
