#include<stdio.h>
void main(){
    char i='a';
    while(i<='z'){
        printf("%c",i);
        i++;
    }
    printf("\n");
    i='A';
    while(i<='Z'){
        printf("%c",i);
        i++;
    }
} 