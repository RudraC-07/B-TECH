import java.util.*;
public class Lab1_6{
    public static void main(String[] args){
          int f,p;
          Scanner sc = new Scanner(System.in);
        System.out.print("Enter your no. : ");
        f = sc.nextInt();
        System.out.print("Enter power : ");
        p = sc.nextInt();

        int ans = 1;
        for(int i=1;i<=p;i++){
            ans = ans*f;
        }

        System.out.println(f+" ^ "+p+" = "+ans);
    }
}