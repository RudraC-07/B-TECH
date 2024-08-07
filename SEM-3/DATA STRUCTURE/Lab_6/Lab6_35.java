import java.util.*;

class Student_Detail{
  int Enrollment_no;
  String Name;
  int Semester;
  double CPI;

  void set_detail(){
    Scanner sc = new Scanner(System.in);

    System.out.print("Enter Enrollment number : ");
    Enrollment_no = sc.nextInt();

    System.out.print("Enter Name of Student : ");
    Name = sc.next();

    System.out.print("Enter Semester of Student : ");
    Semester = sc.nextInt();

    System.out.print("Enter CPI of Student : ");
    CPI = sc.nextDouble();
  }

  void get_detail(){
    System.out.println("Enrollment Number = "+Enrollment_no);
    System.out.println("Student Name = "+Name);
    System.out.println("Student Semester = "+Semester);
    System.out.println("Student CPI = "+CPI);
  }
}
public class Lab6_35 {
  public static void main(String[] args) {
    Student_Detail [] s1 = new Student_Detail [5];

    for(int i=0;i<s1.length;i++){
      s1[i] = new Student_Detail();
      s1[i].set_detail();
    }
    
    for(int i=0;i<s1.length;i++){
      s1[i].get_detail();
      System.out.println();
    }
  }
}
