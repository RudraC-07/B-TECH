class MyThread1 extends Thread{
  public void run(){
    for(int i=1; i<=20; i++){
      if(i%2==0){
        try{
          Thread.sleep(50);
          System.out.println(i);
        }
        catch(Exception e){
          e.printStackTrace();
        }
      }
    }
  }
}

class MyThread2 extends Thread{
  public void run(){
    for(int i=1; i<=20; i++){
      if(i%2!=0){
        try{
          Thread.sleep(50);
          System.out.println(i);
        }
        catch(Exception e){
          e.printStackTrace();
        }
      }
    }
  }
}

public class Lab9_2 {
  public static void main(String[] args) {
    MyThread1 t1 = new MyThread1();
    MyThread2 t2 = new MyThread2();
    t1.start();
    t2.start();
  }
}
