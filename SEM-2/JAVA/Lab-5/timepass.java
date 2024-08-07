import java.util.*;
class Time{
    int h;
    int m;
    public void add(Time t1){
        this.m = this.m + t1.m;
        if(this.m >= 60){
            m=m-60;
            h++;
        }
        this.h = this.h + t1.h;
    }
}
public class timepass {
    public static void main(String[] args) {
        Time t1 = new Time();
        Time t2 = new Time();
      
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Hour time 1 : ");
        t1.h=sc.nextInt();
        System.out.print("Enter minute time 1 : ");
        t1.m=sc.nextInt();
        System.out.print("Enter Hour time 2 : ");
        t2.h=sc.nextInt();
        System.out.print("Enter minute time 2 : ");
        t2.m=sc.nextInt();
        t2.add(t1);
        System.out.println();
        System.out.println("Time = "+t2.h+":"+t2.m);
    }
}
