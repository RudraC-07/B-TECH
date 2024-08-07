import java.util.*;
public class Lab1_8{
    public static void main(String[] args){

        Scanner sc = new Scanner(System.in);
        int n;
        System.out.print("Enter number : ");
        n = sc.nextInt();
        int count=0;
        for(int i=2;i<n;i++){
            if(n%2==0){
                count++;
            }
        }
        if(count==0){
            System.out.println("No. is prime.");
        }
        else {
        System.out.println("No. is not prime.");
        }    
    }
}