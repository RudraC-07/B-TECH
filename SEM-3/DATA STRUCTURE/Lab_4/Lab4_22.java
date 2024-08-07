import java.util.*;

public class Lab4_22 {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    System.out.print("Enter size of array : ");
    int n = sc.nextInt();
    int [] a = new int[n];
    for(int i=0;i<n;i++){
      System.out.print("Enter elements at ["+i+"] : ");
      a[i] = sc.nextInt();
    }

    System.out.print("Enter position to delete element : ");
    int pos = sc.nextInt();

    int [] temp = new int[a.length-1];

    for(int i=0;i<a.length;i++){
      if(pos>i){
        temp[i]=a[i];
      }

      else if(pos==i){
        continue;
      }

      else if(pos<i){
        temp[i-1] = a[i];
      }
    }

    for(int i=0;i<temp.length;i++){
      System.out.println("Element ["+i+"] = " +temp[i]);
    }
  }
}
