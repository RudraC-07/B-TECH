import java.util.Scanner;
public class marks {
    public static void main(String[] arg){
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter marks a : ");
        float a = sc.nextFloat();
        System.out.print("Enter marks b : ");
        float b = sc.nextFloat();
        System.out.print("Enter marks c : ");
        float c = sc.nextFloat();
        System.out.print("Enter marks d : ");
        float d = sc.nextFloat();
        System.out.print("Enter marks e : ");
        float e = sc.nextFloat();
        float f = (a+b+c+d+e)/(float)5.0;
        if(f<40){
            System.out.println("Fail");
        }
        else if(f>=40 && f<=49){
            System.out.println("Third division");
        }
        else if(f>=50 && f<=59){
            System.out.println("Second division");
        }
        else{
            System.out.println("First division");
        }
    }
}
