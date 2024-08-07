import java.util.Scanner;

public class Lab7_40 {
    public static boolean isValid(String str){

        Stack_For_Char stk=new Stack_For_Char(str.length());
        int countB=0;
        for(char temp:str.toCharArray()){
            if(temp=='a'){
                if(countB!=0){
                    return false;
                }
                stk.push(temp);
            }else if(temp=='b'){
                if(stk.top==-1 || stk.pop()!='a'){
                    return false;
                }
                countB++;
            }else{
                return false;
            }
        }
        if(stk.top==-1){
            return true;
        }else{
            return false;
        }
    }
    public static void main(String[] args) {
      Scanner sc = new Scanner(System.in);
      System.out.print("Enter String In Form Of(a^i b^i) : ");
      String str=sc.nextLine().toLowerCase(); 
      
      if(isValid(str)){
        System.out.println(str+" is Valid String");
      }else{
        System.out.println(str+" is not Valid String");
      }
    }
}
