import java.util.*;

public class Lab18_92 {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    System.out.print("Enter size of array : ");
    int n = sc.nextInt();

    int a[] = new int[n];

    for (int i = 0; i < n; i++) {
      System.out.print("Enter elements in a[" + i + "] : ");
      a[i] = sc.nextInt();
    }

    for (int i = 0; i < n - 1; i++) {
      int minIndex = i;
      for (int j = i + 1; j < n; j++) {
        if (a[minIndex] > a[j]) {
          minIndex = j;
        }
      }
      int temp = a[i];
      a[i] = a[minIndex];
      a[minIndex] = temp;
    }

    System.out.println("Sorted Array = ");
    for (int i = 0; i < n; i++) {
      System.out.println(a[i]);
    }
  }
}