#include<stdio.h>
void main(){
    int i=1,n;
    printf("Enter a val. n : ");
    scanf("%d",&n);
    while(i<=n){
        if(n%i==0){
        printf("Factors = %d\n",i);
        }
        i++;
    }
}