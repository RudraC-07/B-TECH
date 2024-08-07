import java.util.*;

public class Lab4_25 {
    
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter Array Size : ");
        int n = sc.nextInt();

        int[] a = new int[n];

        for(int i = 0; i < n; i++){

            System.out.print("Enter Value In a["+i+"] : ");
            a[i] = sc.nextInt();
        }

        for(int i = 0; i < n; i++){
            for(int j = (i+1); j < n; j++){

                if(a[i] == a[j]){

                    a[j] = -1;
                }
            }
        }

        int temp[] = new int[n];
        int index = 0;

        for(int i = 0; i < n; i++){

            if(a[i] != -1){

                temp[index++] = a[i];
            }
        }

        int[] ans = new int[index];

        for(int i = 0; i < index; i++){

            ans[i] = temp[i];
        }

        for(int i = 0; i < index; i++){

            System.out.println(ans[i]);
        }
    }
}