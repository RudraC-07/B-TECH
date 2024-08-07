import java.util.*;

public class Lab18_90{
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    
    System.out.print("Enter size of array : ");
    int n = sc.nextInt();

    int a[] = new int[n];
    for(int i=0 ; i<n; i++){
      System.out.print("Enter elements at a["+i+"] : ");
      a[i] = sc.nextInt();
    }

    System.out.print("Enter element to search : ");
    int ele = sc.nextInt();

    for(int i=0 ; i<n ; i++){
      if(a[i] == ele){
        System.out.println("Element found at "+i);
        return;
      }
    }
    System.out.println("Element not found.");
  }
}