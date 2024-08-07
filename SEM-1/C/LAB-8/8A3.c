#include<stdio.h>
void main(){
    int a,b;
    printf("Enter a no.:");
    scanf("%d",&a);
    printf("Enter a no.:");
    scanf("%d",&b);
    while(a<=b){
        if(a%2==0){
            printf("%d\n",a);
        }
        a++;
    }
}