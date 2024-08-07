import java.util.Scanner;
public class area {
    public static void main(String[] arg){
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter radius : ");
        int r = sc.nextInt();
        System.out.print("Area of circle : "+(Math.PI*r*r));
    }
}
