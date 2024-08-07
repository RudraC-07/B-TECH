#include<stdio.h>
void main(){
    char ch;
    printf("Enter a character :");
    scanf("%c",&ch);
    if(ch>='A'&& ch<='Z'){
        printf("Character is uppercase");
    }
    else if(ch>='a' && ch<='z'){
        printf("Character is lowercase");
    }
    else if(ch>='0' && ch<='9'){
        printf("Character is Digit");
}
    else{
        printf("Character is special symbol");
    }
}