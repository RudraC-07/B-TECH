import java.util.*;

public class Lab3_13 {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    
    System.out.print("Enter size of array: ");
    int n=sc.nextInt();
    int [] a = new int[n];
    
    for (int i=0 ; i<n ; i++) {
      System.out.print("Enter elements: ");
      a[i] = sc.nextInt();
    }
    for(int i=0 ; i<n ; i++) {
      System.out.println("elements = "+a[i]);
    } 
  }
}