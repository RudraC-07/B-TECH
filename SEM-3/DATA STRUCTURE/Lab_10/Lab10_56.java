import java.util.*;

class Node{
  int data;
  Node link;

  Node(int data){
    this.data= data;
    this.link = null;
  }
}

class Linkedlist{
  Node first;
}

public class Lab10_56 {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    System.out.print("Enter data in node : ");
    int a = sc.nextInt();
    Node n1 = new Node(a);

    System.out.print("Enter data in node : ");
    a = sc.nextInt();
    Node n2 = new Node(a);

    n1.link = n2;

    System.out.println("Data in node : "+n2.data);
    System.out.println("Data in node : "+n1.link.data);
  }
}
