import java.io.*;

class Student{
  String name;
  int age;

  Student(String name, int age){
    this.name = name;
    this.age = age;
  }
  
  public String toString(){
    return name + " " + age;
  }
}


public class Lab11_1 {
  public static void main(String[] args) {
    String filename = "abc.txt";

    try {
      BufferedWriter bw = new BufferedWriter(new FileWriter(filename));
      bw.write("Rudra,30\n");
      bw.write("Raj,14\n");
      bw.write("Keval,2\n");
      bw.close();
      System.out.println("Success");
    }
    catch (IOException e) {
      System.out.println(e);
    }

    try {
      BufferedReader br = new BufferedReader(new FileReader(filename));
      String line;
      while ((line = br.readLine())!= null) {
        String name_age [] = line.split(",");
        String name = name_age[0];
        int age = Integer.parseInt(name_age[1]);
        Student st = new Student(name, age);
        System.out.println(st);
      }
      br.close();
    }
    catch (Exception e) {
      System.out.println(e);
    }

  }
}