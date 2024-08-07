#include<stdio.h>
void main(){
    int i=1,n;
    printf("Enter a no. for table :");
    scanf("%d",&n);
    while(i<=10){
        printf("%d*%d=%d\n",n,i,n*i);
        i++;
    }
}