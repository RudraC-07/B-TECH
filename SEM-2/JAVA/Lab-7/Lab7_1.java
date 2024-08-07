abstract class Vegetable{
  String colour;
  String name;
  Vegetable(String colour, String name){
    this.colour = colour;
    this.name = name;
  }
  abstract public String toString();
}

abstract class Potato extends Vegetable{
  Potato(String colour, String name){
    super(colour, name);
    colour=yellow;
    name=potato;
    abstract public String toString(){
      return colour;
      return name;
    }
  }
}
class Brinjal{}
class Tomato{}

public class Lab7_1 {
  public static void main(String[] args) {
    
  }  
}
