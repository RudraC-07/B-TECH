public class Lab13_74 {
  public static void main(String[] args) {
    CircularLL cl = new CircularLL();
    cl.insertNodeAtLast(1);
    cl.insertNodeAtLast(2);
    cl.insertNodeAtLast(3);
    cl.insertNodeAtLast(4);
    cl.insertNodeAtLast(5);
    cl.insertNodeAtLast(6);
    CircularLL c2 = cl.splitIntoHalves();
  }
}
