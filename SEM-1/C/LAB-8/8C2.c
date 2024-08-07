#include<stdio.h>
void main(){
    int i=1,sum=0,n;
    printf("Enter a no.:");
    scanf("%d",&n);
    while(i<=n){
        sum=i*i+sum;
        i++;
    }
    printf("Sum = %d",sum);
}