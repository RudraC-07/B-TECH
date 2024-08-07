class Node{
  int data;
  Node link;
 
  public Node(int data){
     this.data = data;
     this.link = null;
  }
}

class QueueByLinkList{
  Node head = null;
  Node tail = null;

  public void Enqueue(int data) {    
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

  public int Dequeue(){
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
          head = head.link;
          data = temp.data;
          temp = null;
          return data;
      }
  }

  public void display() {    
      //Node current will point to head    
      Node current = head;    
          
      if(head == null) {    
          System.out.println("Queue is empty");    
          return;    
      }    
      System.out.println("Queue of singly linked list: ");    
      while(current != null) {    
          //Prints each node by incrementing pointer    
          System.out.print(current.data + " ");    
          current = current.link;    
      }    
      System.out.println();    
  }
}



public class Lab11_61{
  public static void main(String[] args) {
      
      QueueByLinkList q = new QueueByLinkList();
      q.Enqueue(1);
      q.Enqueue(2);
      q.Enqueue(3);

      q.display();

      System.out.println(q.Dequeue());
      q.display();

  }
}