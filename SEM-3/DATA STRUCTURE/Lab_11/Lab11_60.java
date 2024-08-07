class Node{
  int data;
  Node link;
 
  public Node(int data){
     this.data = data;
     this.link = null;
  }
}

class StackByLinkList{
  Node head = null;
  Node tail = null;

  public void push(int data) {    
      //Create a new node    
      Node newNode = new Node(data);    
          
      //Checks if the list is empty    
      if(head == null) {    
          //If list is empty, both head and tail will point to new node    
          head = newNode;    
          tail = newNode;    
      }    
      else {    
          //newNode will be added after tail such that tail's next will point to newNode    
          tail.link = newNode;    
          //newNode will become new tail of the list    
          tail = newNode;    
      }    
  }

  public int pop(){
      int data;
      if(head==null){
          System.out.println("link list is empty");
          return -1;
      }
      else if(head==tail){
          head = null;
          return tail.data;
      }
      else{
          Node temp = head;
          while (temp.link.link!=null) {     
              temp = temp.link;
          }
          temp.link = null;
          data = tail.data;
          tail = null;
          tail = temp;
          return data;
      }
  }

  public void display() {    
      //Node current will point to head    
      Node current = head;    
          
      if(head == null) {    
          System.out.println("List is empty");    
          return;    
      }    
      System.out.println("Nodes of singly linked list: ");    
      while(current != null) {    
          //Prints each node by incrementing pointer    
          System.out.print(current.data + " ");    
          current = current.link;    
      }    
      System.out.println();    
  }
}



public class Lab11_60{
  public static void main(String[] args) {
      
      StackByLinkList s = new StackByLinkList();
      s.push(1);
      s.push(2);
      s.push(3);

      s.display();

      System.out.println(s.pop());
      s.display();

  }
}