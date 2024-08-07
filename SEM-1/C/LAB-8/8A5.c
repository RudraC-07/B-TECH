#include<stdio.h>
void main(){
    int i=1,n,e=0,o=0;
    while(i<=10){
        printf("Enter a number:");
        scanf("%d",&n);
        if(i%2==0){
            e+=1;
        }
        else{
            o+=1;
        }
        i++;
    }
    printf("Total no. of odd no.= %d\n",o);
    printf("Total no. of even no.= %d",e);
}