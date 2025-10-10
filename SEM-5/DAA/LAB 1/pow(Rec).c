#include<stdio.h>

int pow(int x,int y);

void main(){
    int x,y,ans;

    printf("Enter base : ");
    scanf("%d",&x);
    printf("Enter pow : ");
    scanf("%d",&y);

    int ans = pow(x,y);

    printf("Factorial = %d",ans);
}

int pow(int x,int y){
    if(y==0){
        return 1;
    }
    else{
        return 1*pow(x,y);
    }
}