#include<stdio.h>
void main(){
    int i=101;
    while(i<200){
        if(i%7==0 && i%5!=0){
            printf("Integers = %d\n",i);
        }
        i++;
    }
}