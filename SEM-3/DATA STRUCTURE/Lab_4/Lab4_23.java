import java.util.*;

public class Lab4_23 {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    int [] old = {10,20,30,40,50,70};
    int [] n = new int[old.length+1];

    System.out.print("Enter element to insert : ");
    int element = sc.nextInt();
    
    int indx = 0;

    while(indx<old.length && old[indx]<element){
      n[indx] = old[indx];
      indx++;
    }
    n[indx] = element;

    while(indx<old.length){
      n[indx+1] = old[indx];
      indx++;
    }

    for(int i=0;i<n.length;i++){
      System.out.println("Element ["+i+"] = " +n[i]);
    }
  }
}
