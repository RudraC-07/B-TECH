import 'dart:io';

void main(){
  stdout.write("Enter 1st number : ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter 2nd number : ");
  int b = int.parse(stdin.readLineSync()!);

  stdout.write("Enter operator : ");
  String o =stdin.readLineSync()!;

  if(o=='+'){
    print("Addition of no. : ${a+b}");
  }
  else if(o=='-'){
    print("Subtraction of no. : ${a-b}");
  }
  else if(o=='*'){
    print("Product of no. : ${a*b}");
  }
  else if(o=='/'){
    if(b==0){
      print("Infinity");
    }
    else{
      print("Division of no. : ${a/b}");
    }
  }
  else{
    print("Enter valid operator.");
  }
}