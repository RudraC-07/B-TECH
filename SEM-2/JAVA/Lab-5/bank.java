import java.util.Scanner;

public class bank {
    public static void main(String[] args) {
        Bank_Account b1 = new Bank_Account();
        b1.getAccountDetails();
        b1.displayaccountdetails();
    }
}

class Bank_Account{

    int accno;
    String username;
    String email;
    String acctype;
    double accbalance;

    void getAccountDetails(){
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Account Number : ");
        this.accno = sc.nextInt();
        System.out.print("Enter Username : ");
        this.username = sc.next();
        System.out.print("Enter Email : ");
        this.email = sc.next();
        System.out.print("Enter Account type : ");
        this.acctype = sc.next();
        System.out.print("Enter Account Balance : ");
        this.accbalance = sc.nextDouble();
    }

    void displayaccountdetails(){
        System.out.println();
        System.out.println("Account number : "+this.accno);
        System.out.println("Username : "+this.username);
        System.out.println("Email : "+this.email);
        System.out.println("Account type : "+this.acctype);
        System.out.println("Account Balance : "+this.accbalance);
    }
}
