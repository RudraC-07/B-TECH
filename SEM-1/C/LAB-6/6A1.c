#include<stdio.h>
void main(){
    int a,b;
    char n;
    printf("Enter an operator : ");
    scanf("%c",&n);
    printf("Enter a val. a : ");
    scanf("%d",&a);
    printf("Enter a val. b : ");
    scanf("%d",&b);
    if(n=='+'||n=='-'||n=='*'||n=='/'){
        if(n=='+'){
            printf("Addition of two no. : %d",a+b);
        }
        else if(n=='-'){
            printf("Subtraction of two no. is %d",a-b);
        }
        else if(n=='*'){
            printf("Multiplication of two no. : %d",a*b);
        }
        else if(n=='/'){
            if(b==0){
            	printf("Enter a valid no.");	
			}
			else{
			printf("Division of two no. : %d",a/b);
			}
			}
        }
    else{
        printf("Invalid operator");
		}

    }

