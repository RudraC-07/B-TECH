class MyThread1 implements Runnable{
  public void run(){
    for(int i=0; i<=10; i++){
      try{
        Thread.sleep(1000);
        System.out.println("Good Morning");
      }
      catch(Exception e){
        e.printStackTrace();
      }
    }
  }
}

class MyThread2 implements Runnable{
  public void run(){
    for(int i=0; i<=10; i++){
      try{
        Thread.sleep(3000);
        System.out.println("Good Afternoon");
      }
      catch(Exception e){
        e.printStackTrace();
      }
    }
  }
}

public class Lab9_1 {
  public static void main(String[] args) {
    MyThread1 t1 = new MyThread1();
    MyThread2 t2 = new MyThread2();
    Thread t3 = new Thread(t1);
    Thread t4 = new Thread(t2);
    t3.start();
    t4.start();
  }
}
