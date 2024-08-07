import java.util.Scanner;

public class Lab6_36 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.err.println("enter temprature in celcius");
        float celcius = sc.nextFloat();

        System.err.println("enter temprature in feranhit");
        float feranhit = sc.nextFloat();

        float f = toFeranhit(celcius);
        float c = toCelcius(feranhit);

        

        System.out.println(celcius+"celcius="+f);
        System.out.println(feranhit+"feranhit="+c);


    }

    static float toFeranhit(float temp){
        return ((9/5)*temp)+32;

        
    }

    static float toCelcius(float feranhit){
        return (feranhit - 32) *5/9;

        //System.out.println(feranhit+"feranhit="+celcius);
    }
}
