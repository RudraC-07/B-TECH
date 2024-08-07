import java.util.Scanner;
public class add{
    public static void main(String[] arg){
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter value a : ");
        int a = sc.nextInt();
        System.out.print("Enter value b : ");
        int b = sc.nextInt();
        System.out.println("Sum : "+(a+b));
    }
}