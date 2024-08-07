import java.util.*;

public class Lab3_15 {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    System.out.print("Enter number : ");
    int m = sc.nextInt();
    int sum = 0;
    int avg = 0;
    for (int i = 0; i <= m; i++) {
      sum += i;
    }
    avg = sum / (m);
    System.out.print("Average = "+avg);
  }
}
