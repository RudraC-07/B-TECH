#include<stdio.h>
void main(){
    int i=1,n,a=1;
    printf("Enter val. to find factorial : ");
    scanf("%d",&n);
    while(i<=n){
        a=a*i;
        i++;
    }
    printf("Factorial = %d",a);
}