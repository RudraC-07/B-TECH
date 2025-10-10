#include<stdio.h>

int countNo(int n);

void main(){
    int n;

    printf("Enter a no. : ");
    scanf("%d",&n);

    int ans = countNo(n);

    printf("Number count = %d",ans);
}

int countNo(int n){
    if(n == 0){
        return 0;
    }
    else{
        return 1 + countNo(n/10);
    }
}