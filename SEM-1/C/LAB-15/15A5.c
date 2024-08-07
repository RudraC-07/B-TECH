#include<stdio.h>
#include<string.h>
void main(){
	char a[1000];
	printf("Enter string : ");
	gets(a);
	puts(a);
	printf("Length of string = %d",strlen(a));
}
