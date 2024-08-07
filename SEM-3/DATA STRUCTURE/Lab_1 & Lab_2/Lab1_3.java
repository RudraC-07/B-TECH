import java.util.*;
public class Lab1_3{
    public static void main(String[] args){
        char c;
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter character : ");
        c = sc.next().charAt(0);

        if(c=='a' || c=='e' || c=='i' || c=='o' || c=='u'|| c=='A' || c=='E' || c=='O' || c=='I' || c=='U'){
             System.out.println("Entered character is vowel");
        }
        else System.out.println("Entered character is consonant");
        


        
    }
}