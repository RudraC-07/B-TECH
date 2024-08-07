import java.util.Scanner;
public class calc {
    public static void main(String[] arg){
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter operator : ");
        char o = sc.nextLine().charAt(0);
        System.out.print("Enter value a : ");
        float a = sc.nextFloat();
        System.out.print("Enter value b : ");
        float b = sc.nextFloat();
        if(o=='+'){
            System.out.println("Sum : "+(a+b));
        }
        else if(o=='-'){
            System.out.println("Subtraction : "+(a-b));
        }
        else if(o=='*'){
            System.out.println("Multiplication : "+(a*b));
        }
        else if(o=='/'){
            System.out.println("Division : "+(a/b));
        }
        else{
            System.out.println("Input valid operator.");
        }
    }
}
