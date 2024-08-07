#include<stdio.h>
void main(){
    int i=1,n,sum=0,avg=0,a;
    printf("Enter inputs : ");
    scanf("%d",&n);
    while(i<=n){
        printf("Enter numbers : ");
        scanf("%d",&a);
        sum=sum+a;
        i++;
    }
    printf("Sum = %d\n",sum);
    avg=sum/n;
    printf("Avg. = %d",avg);
}