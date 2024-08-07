public class Lab7_3 {
  public static void main(String[] args) {
    Animal [] a = {
      new Tiger(),
      new Camel(),
      new Deer(),
      new Donkey()
    };
    for(Animal animal : a) {
      if(animal instanceof Transport){
        ((Transport)animal).deliver();
      }
  }
}
}


interface Transport{
    public void deliver();
}
abstract class Animal{

}

class Tiger extends Animal{

}
class Camel extends Animal implements Transport{
  @Override
  public void deliver() {
    System.out.println("delivering Camel");
  }
}
class Deer extends Animal{

}
class Donkey extends Animal implements Transport{
  @Override
  public void deliver() {
    System.out.println("delivering Donkey");
  }
}
