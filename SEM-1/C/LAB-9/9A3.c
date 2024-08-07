#include<stdio.h>
void main(){
    int a=1,x,y,i=1;
    printf("Enter a val. X : ");
    scanf("%d",&x);
    printf("Enter a val. Y : ");
    scanf("%d",&y);
    while(i<=y){
        a=a*x;
        i++;
    }
    printf("X^Y = %d",a);
}