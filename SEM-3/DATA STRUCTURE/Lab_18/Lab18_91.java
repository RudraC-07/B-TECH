import java.util.*;

public class Lab18_91 {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    System.out.println("Enter elements in sorted form.");
    System.out.println();

    System.out.print("Enter size of array : ");
    int n = sc.nextInt();

    int a[] = new int[n];

    for (int i = 0; i < n; i++) {
      System.out.print("Enter elements at a[" + i + "] : ");
      a[i] = sc.nextInt();
    }

    System.out.print("Enter element to search : ");
    int ele = sc.nextInt();

    int left = 0, right = n - 1, mid = 0;

    while(left <= right) {
      mid = (left + right) / 2;
      if (a[mid] == ele) {
        System.out.println("Element found at " + mid);
        return;
      }
      if (a[mid] < ele) {
        left = mid + 1;
      } else if (a[mid] > ele) {
        right = mid - 1;
      } else {
        System.out.println("Element not found.");
      }
    }
  }
}
