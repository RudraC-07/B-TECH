import java.util.*;

public class Lab9_50 {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    System.out.print("Enter size of queue : ");
    int n = sc.nextInt();

    Queue q = new Queue(n);

    while(true){
      System.out.println("Enter 1 to EnQueue.");
      System.out.println("Enter 2 to DeQueue.");
      System.out.println("Enter 3 to Display Queue.");
      System.out.println("Enter 4 to exit.");
      int temp = sc.nextInt();

      switch(temp){
        case 1:
        System.out.print("Enter element to add : ");
        int ele = sc.nextInt();
        q.EnQueue(ele);
        break;
        case 2:
        q.DeQueue();
        break;
        case 3:
        q.Display();
        break;
      }
      if(temp == 4) break;
    }
  }
}

class Queue{
  int r,f;
  int size;
  int [] queue;  

  public Queue(int n){
    this.r = -1;
    this.f = -1;
    this.size = n;
    queue = new int[n];
  }

  public void EnQueue(int ele){  
    if(r >= size-1){
      System.out.println("Queue Overflow.");
      return;
    }
    r++;
    queue[r] = ele;
    if(f == -1){
      f=0;
    }
    System.out.println("Element Added.");
  }

  public int DeQueue(){
    if(f == -1){
      System.out.println("Queue Underflow.");
      return -1;
    }
    int ele;
    if(f==r){
      ele = queue[f];
      f = -1;
      r = -1;
      return ele;
    }
    else{
      ele = queue[f];
      f++;
    }
    System.out.println("Element Deleted.");
    return ele;
  }

  public void Display(){
    if(r == -1 && f == -1){
      System.out.println("Empty Queue.");
      return;
    }
    for(int i = f;i < r;i++){
      System.out.print(queue[i]+" -> ");
    }
    System.out.println(queue[r]);
  }
}

