import java.util.*;
public class length {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter String : ");
        String str = sc.nextLine();
        System.out.println("Size of string = "+str.length());
        for(int i=str.length()/2;i<str.length();i++){
            System.out.print(str.charAt(i));
        }
    }
}
