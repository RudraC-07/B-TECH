import java.util.Scanner;
public class palindrome {
    public static void main(String[] arg){
        Scanner sc=new Scanner(System.in);
        System.out.print("Enter number : ");
        int n = sc.nextInt();
        int f=0;
        int x=n;
        int last;
        while(n>0){
        last = n%10;
        f=f*10+last;
        n = n/10;
        }
        if(f==x){
            System.out.println("No. is palindrome");
        }
        else{
            System.out.println("No. is not palindrome");
        }
    }
}
