import java.util.Scanner;
public class convow {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter String : ");
        String str = sc.nextLine();
        String vowel = "aeiouAEIOU";
        int cc=0;
        int cv=0;
        for(int i=0;i<str.length();i++){
            if(vowel.indexOf(str.charAt(i))>-1){
                cv++;
            }
            else if (str.charAt(i) == ' ') {
                
            }
            else{
                cc++;
            }
            
        }
        System.out.println("Vowels = "+cv);
        System.out.println("Consonants = "+cc);
    }
}
