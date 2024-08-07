#include<stdio.h>
#include<math.h>
void main(){
	double a,b,c,d,r1,r2;
	printf("Enter value of a,b,c :");
	scanf("%lf %lf %lf",&a,&b,&c);
	d=((b*b)-(4*a*c));
	r1=(-b+sqrt(d))/2*a;
	r2=(-b-sqrt(d))/2*a;
	printf("%lf %lf",r1,r2);
}
