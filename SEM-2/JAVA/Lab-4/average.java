import java.util.Scanner;
public class average {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int[] a = new int[4];
        for(int i=0;i<4;i++){
            System.out.print("Enter array elements : ");
            a[i] = sc.nextInt();
        }
        float avg=0;
        for(int i=0;i<4;i++){
            avg=(avg+a[i]);
        }
        avg = avg/4.0f;
        System.out.println("Average = "+avg);
    }
}
