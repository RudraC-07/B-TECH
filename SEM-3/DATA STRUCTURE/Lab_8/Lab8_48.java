import java.util.*;

public class Lab8_48 {

  public static double evalute(double n1 , double n2 , String ope){
    if(ope.equals("+")){
      return n1 + n2;
    }
    if(ope.equals("-")){
      return n1 - n2;
    }
    if(ope.equals("*")){
      return n1 * n2;
    }
    if(ope.equals("/")){
      return n1 / n2;
    }
    if(ope.equals("^")){
      return Math.pow(n1, n2);
    }
    return -1;
  }

  public static double preeval(String[] a) {
    Stack<Double> s = new Stack<>();

    for (int i = a.length - 1; i >= 0; i--) {
      String temp = a[i];

      if(temp.equals("+") || temp.equals("-") || temp.equals("*") || temp.equals("/") || temp.equals("^")){
        double n1 = s.pop();
        double n2 = s.pop();
        double ans = evalute(n1, n2, temp);
        s.push(ans);
      }
      else{
        s.push(Double.parseDouble(temp));
      }
    }
    return s.pop();
  }

  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    System.out.print("Enter string in comma saperated : ");
    String a = sc.next();

    String[] arr = a.split(",");
    for(int i = 0 ; i < arr.length ; i++){
      arr[i] = arr[i].trim();
    }

    System.out.println("Ans = " + preeval(arr));
  }
}