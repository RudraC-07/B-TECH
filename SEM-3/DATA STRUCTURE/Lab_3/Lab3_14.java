import java.util.*;

public class Lab3_14 {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    System.out.print("Enter first number : ");
    int m = sc.nextInt();
    System.out.print("Enter second number : ");
    int n = sc.nextInt();
    int sum = 0;
    for (int i = m; i <= n; i++) {
      sum += i;
    }
    System.out.print("Sum = "+sum);
  }
}
