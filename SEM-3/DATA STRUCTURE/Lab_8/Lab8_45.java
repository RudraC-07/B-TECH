import java.util.*;

public class Lab8_45{

  public static int g(char c){
    if(c=='+' || c=='-'){
      return 2;
    }
    else if(c=='*' || c=='/'){
      return 4;
    }
    else if(c=='^'){
      return 5;
    }
    else if(c=='(' || c==')'){
      return 0;
    }
    else{
      return 8;
    }
  }

  public static int f(char c){
    if(c=='+' || c=='-'){
      return 1;
    }
    else if(c=='*' || c=='/'){
      return 3;
    }
    else if(c=='^'){
      return 6;
    }
    else if(c=='('){
      return 9;
    }
    else if(c==')'){
      return 0;
    }
    else{
      return 7;
    }
  }


  public static int rank(char r){
    if(r=='+'||r=='-'||r=='*'||r=='/'||r=='^') return -1;
    else if(r=='('||r==')') return 0;
    return 1;
  }

  public static void findPostFix(String infix){
    Stack<Character> s = new Stack<>();

    s.push('(');

    String polish = "";
    int rank = 0;

    for(int i = 0 ; i < infix.length() ; i++){
      if(s.isEmpty()){
        System.out.println("E");
        return;
      }

      char next = infix.charAt(i);
      while(g(s.peek()) > f(next)){
        polish += s.pop();
        rank += rank(next);
        if(rank < 0){
          System.out.println();
          break;
        }
      }

      

      if(g(s.peek()) != f(next)){
        s.push(next);
      }
      else{
        s.pop();
      }
    }
    System.out.println("Postfix = "+polish); 
  }
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    System.out.print("Enter infix : ");
    String infix = sc.nextLine();

    findPostFix(infix);
  }
}