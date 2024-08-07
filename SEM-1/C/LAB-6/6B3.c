#include<stdio.h>
void main(){
	int a,b,c;
	printf("Enter sides a,b,c : ");
	scanf("%d %d %d",&a,&b,&c);
	if(a==b && a==c && b==c){
		printf("Equilateral triangle");
	}
	else if(a==b || a==c || b==c){
		printf("Isosceles triangle");
	}
	else if((a!=b && a!=c && b!=c) && ((a*a+b*b==c*c)||(a*a+c*c==b*b)||(c*c+b*b==a*a))){
		printf("Right angled triangle");
	}
	else{
		printf("Scelene triangle");
	}
}
