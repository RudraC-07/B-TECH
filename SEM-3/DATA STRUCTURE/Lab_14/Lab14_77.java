import java.util.*;

public class Lab14_77 {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    int [] arr = {1,2,3,4,5,6,7};
    BTree t1 = new BTree();
    Node root = t1.ConvertArrayToBTree(arr, 0);
    t1.inOrder(root);
  }
}

class Node{
  int info;
  Node left;
  Node right;

  public Node(){
    this.info = 0;
  }
  public Node(int info){
    this.info = info;
    this.left = null;
    this.right = null;
  }
}

class BTree{
  public Node ConvertArrayToBTree(int[] arr,int index){
    Node root = null;
    if(index < arr.length){
      root = new Node(arr[index]);
      root.left = ConvertArrayToBTree(arr, index*2+1);
      root.right = ConvertArrayToBTree(arr, index*2+2);
    }
    return root;
  }

  public void inOrder(Node root){
    if(root != null){
      inOrder(root.left);
      System.out.print(root.info + " ");
      inOrder(root.right);
    }
  }
}