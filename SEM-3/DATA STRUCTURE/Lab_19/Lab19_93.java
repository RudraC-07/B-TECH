import java.util.*;

public class Lab19_93 {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    System.out.print("Enter size of array : ");
    int n = sc.nextInt();

    int a[] = new int[n];

    for (int i = 0; i < n; i++) {
      System.out.print("Enter elements in a[" + i + "] : ");
      a[i] = sc.nextInt();
    }
  }
}
