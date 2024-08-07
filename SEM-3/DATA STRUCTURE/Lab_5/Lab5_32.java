import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Scanner;


public class Lab5_32 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("enter size of arrray of string");
        int n= sc.nextInt();

        String[] a = new String[n];

        for(int i=0;i<a.length;i++){
            System.out.println("enter a["+i+"]");
            a[i] = sc.next();
        }
        int p = (int)((n-1)*Math.random());

        System.out.println(p);

        
        char [] c = a[p].toCharArray();

        Arrays.sort(c);

        String s1 = new String();
        System.out.println("enter your string to anagram");
        s1 = sc.next();

        char [] c1 = s1.toCharArray();

        Arrays.sort(c1);

        if(s1.length()==a[p].length()){
            for(int i=0;i<s1.length();i++){
                if(c[i]==c1[i]){

                }
                else{
                    System.out.println("this is not analog");
                    return;
                }
            }
        }

        else{
            System.out.println("this is not analog");
            return;
        }

        System.out.println(s1+"is the is a analog of "+a[p]);

    }
}
