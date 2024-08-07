#include<stdio.h>
void main(){
    int i=1,n,count=0;
    printf("Enter no. : ");
    scanf("%d",&n);
    while(i<=n){
        if(n%i==0){
            count++;
        }
        i++;
    }
    if(count<=2){
        printf("Number is prime.");
    }
    else{
        printf("Number is not prime.");
    }
}