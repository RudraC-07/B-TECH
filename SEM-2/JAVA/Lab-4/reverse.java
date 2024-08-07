import java.util.*;
public class reverse {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter size of array = ");
        int n = sc.nextInt();
        int[] a = new int[n];
        for(int i=0;i<n;i++){
            System.out.print("Enter array elements = ");
            a[i] = sc.nextInt();
        }
        for(int i=n-1;i>=0;i--){
            System.out.println(a[i]);
        }
    }
}
