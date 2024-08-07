import java.util.*;

public class Lab3_16 {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    int min = Integer.MAX_VALUE;
    int max = Integer.MIN_VALUE;

    System.out.print("Enter size of array : ");
    int n = sc.nextInt();
    int [] a = new int[n];

    int minpos = 0;
    int maxpos = 0;

    for (int i = 0; i < n; i++) {
      System.out.print("Enter elements: ");
      a[i] = sc.nextInt();
      if (a[i] < min) {
        min = a[i];
        minpos = i;
      }
      if (a[i] > max) {
        max = a[i];
        maxpos = i;
      }
    }
    System.out.println("Max pos : "+maxpos);
    System.out.println("Min pos : "+minpos);
  }
}
