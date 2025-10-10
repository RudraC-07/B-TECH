#include<stdio.h>

int sum(int n);

void main(){
    int n,i;

    printf("Enter a no. : ");
    scanf("%d",&n);

    int ans = sum(n);

    printf("Sum = %d",ans);
}

int sum(int n){
    if(n==0){
        return 0;
    }

    else{
        return sum(n-1)+n;
    }
}