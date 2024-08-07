import java.util.Scanner;

class ListDemo{
Node head = null;
Node tail = null;

    //addNode() will add a new node to the list    
    public void addNode(int data) {    
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
    
    public void insertAtFirst(int data){
        Node newNode = new Node(data);
        if(head == null) {    
            //If list is empty, both head and tail will point to new node    
            head = newNode;    
            tail = newNode;    
        }   
        else{
            newNode.link = head;
            head = newNode;

        } 
    }

    public void deleteFirst(){
        if(head==null){
            System.out.println("link list is empty");
        }
        else if(head==tail){
            head = null;
        }
        else{
            Node temp = head;
            head = head.link;
            temp = null;
        }
    }

    public void deleteLast(){
        if(head==null){
            System.out.println("link list is empty");
        }
        else if(head==tail){
            head = null;
        }
        else{
            Node temp = head;
            while(temp.link.link==null){
                tail = null;
                tail = temp;
            }
        }
    }

    public void delete(int index){
        if(head==null){
            System.out.println("list is empty");
        }
        else{
            Node temp = head;
            for(int i=0;i<index-1;i++){
                temp = temp.link;
            }
            temp.link = temp.link.link;
            temp = temp.link;
            temp=null;
        }
    }

    public void deleteWithData(int data){
        if(head==null){
            System.out.println("list is empty");
        }
        else{
            Node temp = head;
            while(temp.link!=null){
                if(temp.link.data == data){
                    temp.link = temp.link.link;
                    temp = temp.link;
                    temp = null;
                    return;
                }
                else{
                    temp = temp.link;
                }
            }

            System.out.println("given data is not in list");
        }
    }



    //display() will display all the nodes present in the list    
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

    public int countOfNode(){
        int count=0;
        Node temp = head;
        while(temp!=null){
            temp = temp.link;
            count++;
        }
        return count;
    }

    public void SameOrNot(ListDemo s2){
        Node temp = head;
        if(countOfNode()!=s2.countOfNode()){
            System.out.println("both link list is not same");
        }
        while(temp!=null){
            if(temp.data==s2.head.data){
                temp = temp.link;
                s2.head = s2.head.link;
            }
            else{
                System.out.println("link list is not same");
                return;
            }
        }
        System.out.println("link list is same");
    }
}

class Node{
 int data;
 Node link;

 public Node(int data){
    this.data = data;
    this.link = null;
 }
}

public class Lab10_57 {
    public static void main(String[] args) {
        ListDemo sList = new ListDemo();
        ListDemo sList2 = new ListDemo();    
            
        //Add nodes to the list    
        sList.addNode(1);    
        sList.addNode(2);    
        sList.addNode(3);    
        sList.addNode(4);
        
        sList2.addNode(1);    
        sList2.addNode(2);    
        sList2.addNode(3);    
        sList2.addNode(4);
        
        sList.SameOrNot(sList2);
        System.out.println(sList.countOfNode());
        //sList.deleteWithData(3);
       // sList.delete(1);
        //Displays the nodes present in the list    
        sList.display();    
    }
}
