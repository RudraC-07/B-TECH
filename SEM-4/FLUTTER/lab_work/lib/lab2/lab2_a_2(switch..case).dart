import 'dart:io';

void main(){
  stdout.write("Enter 1st number : ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter 2nd number : ");
  int b = int.parse(stdin.readLineSync()!);

  stdout.write("Enter operator : ");
  String o =stdin.readLineSync()!;

  switch(o){
    case '+' :
      print("Addition of no. : ${a+b}");
    case '-' :
      print("Subtraction of no. : ${a-b}");
    case '*' :
      print("Product of no. : ${a*b}");
    case '/' :
      if(b==0){
        print("Infinity");
      }
      else{
        print("Division of no. : ${a/b}");
      }
    default : print("Enter valid operator.");
  }
}