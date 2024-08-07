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

public class Lab11_4 {
  public static void main(String[] args) {
    String filename = "xyz.txt";


    try{
      DataOutputStream o = new DataOutputStream(new FileOutputStream(filename));
      o.writeUTF("Rudra");
      o.writeInt(30);
      o.writeUTF("Raj");
      o.writeInt(14);
      o.writeUTF("Keval");
      o.writeInt(2);
      System.out.println("Success");
      o.close();
    }
    catch(Exception e){
      System.out.println(e);
    }

    try{
      DataInputStream i = new DataInputStream(new FileInputStream(filename));
      while(i.available()>0){
        String name = i.readUTF();
        int age = i.readInt();
        System.out.println(name + " " + age);
      }
    }
    catch(Exception e){
      System.out.println(e);
    }
  }
}
