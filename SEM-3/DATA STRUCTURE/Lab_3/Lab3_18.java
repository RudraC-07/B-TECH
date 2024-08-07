import java.util.Scanner;

public class Lab3_18 {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.print("Enter Array Size : ");
        int n = sc.nextInt();
        
        int[] a = new int[n];

        for (int i = 0; i < n; i++) {
            
            System.out.print("Enter arr["+i+"] Element:");
            a[i] = sc.nextInt();
        }

        int count = 0;
        
        System.out.print("Enter Number To Change:");
        int m = sc.nextInt();

        for(int i = 0; i < n; i++){

            if(a[i] == m){
                    count = 1;
            }
        }

        if(count == 1){

            System.out.print("Enter Replacement Number:");
            int x = sc.nextInt();

            for (int i = 0; i < n; i++) {
                
                if(a[i] == m){
                    
                    a[i] = x;
                    System.out.println("Replaced At Index "+i);
                }
            }
            
            for (int i = 0; i < n; i++) {
                
                System.out.println("New arr["+i+"] = "+a[i]);
            }
        }
        else{

            System.out.println("Entered Number Is Not In Array");
        }
    }
}