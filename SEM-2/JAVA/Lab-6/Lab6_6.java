class parent{
  parent(int a){
    System.out.println(a);
  }
}

class Child extends parent{
  int b;
  Child(int a, int b){
    super(a);
    this.b=b;
    System.out.print(b);
  }
  
}


public class Lab6_6{
  public static void main(String[] args) {
    Child c = new Child(10,11);
  }
}
