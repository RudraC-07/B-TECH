import java.util.*;

public class Lab4_24 {
 
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter Array Size : ");
        int n = sc.nextInt();

        int[] a = new int[n];
        int[] temp = new int[n-1];

        for(int i = 0; i < n; i++){

            System.out.print("Enter Value In a["+i+"] : ");
            a[i] = sc.nextInt();
        }

        System.out.print("Enter Element For Delete : ");
        int ele = sc.nextInt();
        
        int count = 0;

        for(int i = 0; i < (n-1); i++){

            if(a[i] == ele){

                count++;
                continue;
            }
            else if(count == 0){

                temp[i] = a[i];
            }
            else if(count != 0){

                temp[i-1] = a[i];
            }
        }

        temp[n-2] = a[n-1];

        for(int i = 0; i < (n-1); i++){

            System.out.println(temp[i]);
        }
    }
}