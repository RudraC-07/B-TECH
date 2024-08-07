import java.util.*;

class Employee_Detail{
  int Employee_Id;
  String Name;
  String Designation;
  double Salary;

  void set_detail(){
    Scanner sc = new Scanner(System.in);

    System.out.print("Enter Employee id : ");
    Employee_Id = sc.nextInt();

    System.out.print("Enter Name of Employee : ");
    Name = sc.next();

    System.out.print("Enter Designation of Employee : ");
    Designation = sc.next();

    System.out.print("Enter Salary of Employee : ");
    Salary = sc.nextInt();
  }

  void get_detail(){
    System.out.println("Employee Id = "+Employee_Id);
    System.out.println("Employee Name = "+Name);
    System.out.println("Employee Designation = "+Designation);
    System.out.println("Employee Salary = "+Salary);
  }

}
public class Lab6_34 {
  public static void main(String[] args) {
    Employee_Detail e1 = new Employee_Detail();

    e1.set_detail();
    e1.get_detail();
  }
}
