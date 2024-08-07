import java.util.*;
class Rectangle{
    int h;
    int w;
    public double area(){
        return h*w;
    }
    public double perimeter(){
        return 2*(h+w);
    }
}
public class arpe {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter height of rectangle : ");
        int h = sc.nextInt();
        System.out.print("Enter width of rectangle : ");
        int w = sc.nextInt();
        Rectangle r = new Rectangle(); 
        r.h=h;
        r.w=w;
        double area = r.area();
        double perimeter = r.perimeter();
        System.out.println("Area = "+area);
        System.out.println("Perimeter = "+perimeter);   
    }
}
