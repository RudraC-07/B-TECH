import java.util.Scanner;
class Sentence{
    String x;
    int ca=0,ce=0,ci=0,co=0,cu=0;
    
    void vow(String x){
        this.x=x;
            for(int i=0;i<x.length();i++){
                if(x.charAt(i)=='a') ca++;
                else if(x.charAt(i)=='e') ce++;
                else if(x.charAt(i)=='i') ci++;
                else if(x.charAt(i)=='o') co++;
                else if(x.charAt(i)=='u') cu++;
            }
            System.out.println("A="+ca);     
            System.out.println("E="+ce);     
            System.out.println("I="+ci);     
            System.out.println("O="+co);     
            System.out.println("U="+cu);     
        }
    }

public class vowel {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Sentence v1 = new Sentence();
        
        while(true){
            System.out.print("Enter : ");
            String x=sc.next();
            if(x.equals("quit")){
                break;
            }
            else{
                v1.vow(x);
            }
            
        }
    }
}
