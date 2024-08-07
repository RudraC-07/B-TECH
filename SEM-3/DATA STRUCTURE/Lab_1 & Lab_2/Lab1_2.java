import java.util.*;
public class Lab1_2{
    public static void main(String[] args){
     Scanner sc = new Scanner(System.in);
        int r;
        System.out.print("Enter no. : ");
        r = sc.nextInt();

        if(r%2==0){
             System.out.println("Entered no. is even");
        }
        else{
             System.out.println("Entered no. is odd");
        }
    }
}