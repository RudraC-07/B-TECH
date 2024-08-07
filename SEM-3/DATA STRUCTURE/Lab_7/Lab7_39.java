import java.util.Scanner;

class Stack_For_Char {
    int top = -1;
    char stackArray[];
    int size;

    public Stack_For_Char(int size) {
        stackArray = new char[size];
        this.size = size;
    }

    public void push(char x) {
        if (top >= size - 1) {
            System.out.println("Stack Overflow");
        }
        top++;
        stackArray[top] = x;
    }

    public char pop() {
        if (top == -1) {
            System.out.println("Stack Underflow");
            return '0';
        }
        top--;
        return stackArray[top + 1];
    }
}

public class Lab7_39 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter One Blank Space At The End Of String For Validation ");
        System.out.print("Enter String : ");
        String str = sc.nextLine().toLowerCase();
        if(str.charAt(str.length()-1)!=' '){
            str=str+" ";
        }
        if(!(str.contains("c") && (str.contains("a") || str.contains("b")))){
            System.out.println("Invalid String");
            return;
        }
        Stack_For_Char stk = new Stack_For_Char(str.length());
        stk.push('c');
        int i = 0;
        try {
            char next = str.charAt(i);
            while (next != 'c') {
                if (next == ' ') {
                    System.out.println("Invalid String");
                    return;
                } else {
                    stk.push(next);
                    i++;
                    next = str.charAt(i);
                }
            }
            i++;
            char topElement = stk.pop();
            while (topElement != 'c') {
                next = str.charAt(i);
                if (next != topElement) {
                    System.out.println("Invalid String");
                    return;
                }
                i++;
                topElement = stk.pop();
            }
            next = str.charAt(i);
            if (next == ' ') {
                System.out.println("Valid String");
            } else {
                System.out.println("Invalid String");
            }
        } catch (Exception e) {
            System.out.println("Invalid String");
            e.printStackTrace();
        }

        return;
    }
}
