#include<stdio.h>

void main(){
    int x,y,i,ans = 1;

    printf("Enter base : ");
    scanf("%d",&x);
    printf("Enter pow : ");
    scanf("%d",&y);

    while(y > 0){
        ans*=x;
        y--;
    }

    printf("Factorial = %d",ans);
}