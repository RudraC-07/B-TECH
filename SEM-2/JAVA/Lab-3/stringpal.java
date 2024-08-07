import java.util.Scanner;
public class stringpal {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter String : ");
        String a=sc.nextLine();
        int start=0;
        int end=a.length()-1;
        int c=0;
        while(start<=end){
            if(a.charAt(start)!=a.charAt(end)){
                c=1;
                break;
            }
            start++;
            end--;
        }
        if(c==0){
            System.out.println("String is palindrome");
        }
        else{
            System.out.println("String is not palindrome");
        }
    }
}