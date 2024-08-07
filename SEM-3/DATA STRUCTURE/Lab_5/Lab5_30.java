import java.util.*;

public class Lab5_30{
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    int [][] a = new int[2][2];
    int [][] b = new int[2][2];
    int [][] s = new int[2][2];

    for(int i=0;i<2;i++){
      for(int j=0;j<2;j++){
        System.out.print("Enter elements in a["+i+"]["+j+"] : ");
        a[i][j] = sc.nextInt();
      }
    }

    for(int i=0;i<2;i++){
      for(int j=0;j<2;j++){
        System.out.print("Enter elements in b["+i+"]["+j+"] : ");
        b[i][j] = sc.nextInt();
      }
    }

    System.out.println("Addition = ");

    for(int i=0;i<2;i++){
      for(int j=0;j<2;j++){
        s[i][j] = a[i][j] + b[i][j];
        System.out.print(s[i][j]+" ");
      }
      System.out.println();
    }
  }
}