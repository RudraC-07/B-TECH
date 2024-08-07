import java.util.Scanner;

class Student{
    int id_no;
    int nos = 2;
    int[] scode = new int[2];
    int[] credit = new int[2];
    char[] grade = new char[2];
    double spi; 

    void get(){

        Scanner sc = new Scanner(System.in);

        System.out.print("Enter Id No. : ");
        id_no=sc.nextInt();

        for(int i=0;i<2;i++){
            System.out.print("Enter Scode : ");
            this.scode[i] = sc.nextInt();
            System.out.print("Enter Grade : ");
            this.grade[i] = sc.next().charAt(0);
            System.out.print("Enter credit : ");
            this.credit[i] = sc.nextInt();
        }
    }

    void spi(){
        
    }
}
public class Lab6_1 {
    public static void main(String[] args) {
        int n = 2;
        Student[] s = new Student[n];
        for(int i=0;i<n;i++){
            s[i] = new Student();
            s[i].get();
        }
    }
}
