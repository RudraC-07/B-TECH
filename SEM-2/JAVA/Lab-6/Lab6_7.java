class Parent{
  final void print(){
    System.out.println("parent");
  } 
}

class Child extends Parent{
  final void print(){
    System.out.println("child");
  }
}

public class Lab6_7 {
  public static void main(String[] args) {
    final int a=7;
    a=0;
  }
}
