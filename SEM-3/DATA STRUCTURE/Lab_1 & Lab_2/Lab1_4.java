import java.util.*;
public class Lab1_4 {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    System.out.print("Enter a no. : ");
    int n = sc.nextInt();
    int fect=1;

    for(int i=1 ; i<=n ; i++){
      fect = i*fect;
    }

    System.out.println("Factorial of "+n+" = "+fect);
  }
}
