import java.util.*;

public class Lab4_26 {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    System.out.print("Enter size of first array : ");
    int n = sc.nextInt();
    int [] a = new int[n];
    for(int i=0;i<n;i++){
      System.out.print("Enter elements in a["+i+"] : ");
      a[i] = sc.nextInt();
    }

    System.out.print("Enter size of second array : ");
    int m = sc.nextInt();
    int [] b = new int[m];
    for(int i=0;i<m;i++){
      System.out.print("Enter elements in b["+i+"] : ");
      b[i] = sc.nextInt();
    }

    int s = n+m;
    int [] c = new int[s];

    for(int i=0;i<n;i++){
      c[i] = a[i];
    }
    for(int i=0;i<m;i++){
      c[n+i] = b[i];
    }

    for(int i=0;i<s;i++){
      System.out.println("Merged array c["+i+"] = "+c[i]);
    }
  }
}
