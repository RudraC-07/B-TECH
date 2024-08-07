import java.util.*;

class Stack{
  int top;
  int size;
  int [] arr;

  Stack(int size){
    top=-1;
    arr = new int[size];
    this.size = size;
  }

  void push(int element){
    if(top>=size-1){
      System.out.println("Stack Overflow.");
      return;
    }

    else{
      top++; 
      arr[top] = element;
    }
  }

  int pop(){
    if(top==-1){
      System.out.println("Stack Underflow.");
      return -1;
    }

    else{
      top--;
      return(arr[top+1]); 
    }
  }

  int peep(){
    Scanner sc = new Scanner(System.in);

    System.out.print("Enter number of element to display : ");
    int a = sc.nextInt();

    if(top-a+1<0){  
      System.out.println("Stack Underflow.");
      return -1;
    }
    return arr[top-a+1];
  }

  void change(int i,int ele){
    if(top-i+1<=0){
      System.out.println("Stack Underflow.");
      return;
    }
    else{
      arr[top-i+1] = ele;
      System.out.println("Element changed successfully.");
    }
  }

  void display(){
    System.out.println();
    for(int i=top;i>=0;i--){
      System.out.println("Stack elements ["+i+"] : "+arr[i]);
    }
    System.out.println();
  }
  
}
public class Lab7_38 {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    System.out.print("Enter size of array : ");
    int n = sc.nextInt();
    
    Stack s1 = new Stack(n);

    System.out.println();
    System.out.println("Press 1 to push.");
    System.out.println("Press 2 to pop.");
    System.out.println("Press 3 to peep.");
    System.out.println("Press 4 to change.");
    System.out.println("Press 5 to display.");
    System.out.println("Press -1 to exit.");
    System.out.println();

    while(true){
      
      System.out.println();
      System.out.print("Enter Choice : ");
      int choice = sc.nextInt();

      switch (choice) {
        case 1:
          System.out.print("Enter element to push : ");
          int element = sc.nextInt();
          s1.push(element);
          break;
        
        case 2:
          int x = s1.pop();
          if(x>-1){
            System.out.println("Poped element : "+x);
          }
          break;

        case 3:
          int r = s1.peep();
          if(r>-1){
            System.out.println(r);
          }
          break;

        case 4:
          System.out.print("Enter number of element to change : ");
          int a = sc.nextInt();
          System.out.print("Enter element : ");
          int ele = sc.nextInt(); 
          s1.change(a,ele);
          break;

        case 5:
          s1.display();
          break;

        case -1:
          return;

        default:
          break;
      }
    }
  }
}
