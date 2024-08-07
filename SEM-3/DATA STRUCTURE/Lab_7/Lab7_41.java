import java.util.Scanner;

public class Lab7_41 {

    public static int isValidString(String str){
        Stack_For_Char stk=new Stack_For_Char(str.length());

        for(char temp:str.toCharArray()){
            if(temp=='(' || temp=='{' || temp=='['){
                stk.push(temp);
            }else if(temp==')' || temp=='}' || temp==']'){
                if(stk.top==-1){
                    return 0;
                }
                char topElement=stk.pop();
                if((temp==')' && topElement!='(') ||
                (temp=='}' && topElement!='{') ||
                (temp==']' && topElement!='[')){
                    return 0;
                }
            }else{
                return 0;
            }
        }
        if(stk.top==-1){
            return 1;
        }else{
            return 0;
        }
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Number Of Test Case : ");
        int n=sc.nextInt();

        int[] ans=new int[n];
        System.out.println("Inputs");
        for (int i = 0; i < ans.length; i++) {
            System.out.print("Enter String For Test Case "+(i+1)+" : ");
            String demo=sc.next();
            ans[i]=isValidString(demo);
        }
        System.out.println("Outputs");
        for (int i = 0; i < ans.length; i++) {
            System.out.println("Test Case "+(i+1)+" : "+ans[i]);
        }
    }
}
