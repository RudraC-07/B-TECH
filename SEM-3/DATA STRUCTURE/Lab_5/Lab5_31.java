import java.util.*;

public class Lab5_31{
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    int [][] a = new int[3][2];
    int [][] b = new int[2][3];
    int [][] m = new int[3][3];

    for(int i=0;i<3;i++){
      for(int j=0;j<2;j++){
        System.out.print("Enter elements in a["+i+"]["+j+"] : ");
        a[i][j] = sc.nextInt();
      }
    }

    for(int i=0;i<2;i++){
      for(int j=0;j<3;j++){
        System.out.print("Enter elements in b["+i+"]["+j+"] : ");
        b[i][j] = sc.nextInt();
      }
    }

    for(int i=0;i<3;i++){
      for(int j=0;j<3;j++){
        int s = 0;
        for(int k=0;k<a[0].length;k++){
          s += a[i][k] * b[k][j];
        }
        m[i][j] = s;
      }
    }
    System.out.println("Multiplication = ");

    for(int i=0;i<3;i++){
      for(int j=0;j<3;j++){
        System.out.print(m[i][j]+" ");
      }
      System.out.println();
    }

    // for(int i=0;i<3;i++){
    //   for(int j=0;j<3;j++){
    //     m[i][j] = ((a[i][0]*b[0][j])+(a[i][1]*b[1][ j]));
    //     System.out.println("Multiplication m["+i+"]["+j+"] : "+m[i][j]);
    //   }
    // }
  }
}