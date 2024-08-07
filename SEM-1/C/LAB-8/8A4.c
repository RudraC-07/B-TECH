#include<stdio.h>
void main(){
    int i=1,n,sum=0;
    printf("Enter a no. :");
    scanf("%d",&n);
    while(i<=n){
        sum+=i;
        i++;
    }
    printf("Sum = %d",sum);
}