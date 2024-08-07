import java.util.Scanner;
public class temp {
    public static void main(String[] arg){
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter value of ferenheit : ");
        double f = sc.nextDouble();
        System.out.println("C = "+((f-32)*5/9));
    }
}
