import java.util.*;

public class Lab8_46 {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    System.out.print("Enter string : ");
    String s = sc.next();

    findPrefix(s);
  }

  public static void findPrefix(String s) {

    int rank = 0;
    s = s + ')';

    char[] a = s.toCharArray();

    s = "";

    for (int i = 0; i < a.length; i++) {

      if (a[i] == '(') {
        a[i] = ')';
      }

      else if (a[i] == ')') {
        a[i] = '(';
      }
      s = s + a[i];
    }

    StringBuffer s1 = new StringBuffer(s);
    s1.reverse();

    System.out.println(s1);

    Stack<Character> s2 = new Stack<>();

    s2.push(')');

    s = "";

    for (int i = 0; i < s.length(); i++) {

      if (s1.charAt(i) == '+' || s1.charAt(i) == '-' || s1.charAt(i) == '*' || s1.charAt(i) == '/') {

        rank = rank--;

        while (true) {
          if (s2.peek() > s1.charAt(i)) {
            s = s + s2.pop();
          } else {
            s2.push(s1.charAt(i));
            break;
          }
        }
      }

      else if (s1.charAt(i) == '^') {

        rank = rank--;

        if (rank < 0) {
          System.out.println("Not valid expression.");
          return;
        }
        while (true) {
          if (s2.peek() >= s1.charAt(i)) {
            s = s + s2.pop();
          } else {
            s2.push(s1.charAt(i));
            break;
          }
        }
      }

      else if (s1.charAt(i) == ')') {
        while (true) {
          if (s2.peek() != '(') {
            s = s + s2.pop();
          } else {
            s2.pop();
            break;
          }
        }
      } else if (s1.charAt(i) == '(') {
        s2.push(s1.charAt(i));
      } else {
        rank = rank++;
        s = s + a[i];
      }
    }

    a = s.toCharArray();
    for (int i = 0; i < a.length; i++) {

      if (a[i] == '(') {
        a[i] = ')';
      }

      else if (a[i] == ')') {
        a[i] = '(';
      }
      s = s + a[i];
    }

    s1 = new StringBuffer(s);
    s1.reverse();

    System.out.println("Prefix = " + s1);
  }

  public static int g(char c) {
    if (c == '+' || c == '-') {
      return 1;
    } else if (c == '*' || c == '/') {
      return 2;
    } else if (c == '^') {
      return 3;
    } else if (c == '(') {
      return 0;
    } else {
      return -1;
    }
  }
}
