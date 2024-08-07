#include <stdio.h>
void main(){
	int a,rem;
	printf("Enter a no.:");
	scanf("%d",&a);
    rem=a%10;
    printf("remainder : %d",rem);
	if(rem%2==0){
	printf("\nDigit is even.");
}
	else{
	printf("\nDigit is odd.");
}
}
