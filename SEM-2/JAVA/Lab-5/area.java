import java.util.*;
class Circle{
    int radius;
    public double getArea(){
        return Math.PI*radius*radius;
    }
}
public class area {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter radius of circle : ");
        int radius = sc.nextInt();
        Circle c = new Circle();
        c.radius = radius;
        double area = c.getArea();
        System.out.println("Area : "+area);
    }
}
