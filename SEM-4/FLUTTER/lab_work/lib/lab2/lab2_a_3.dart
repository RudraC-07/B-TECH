import 'dart:io';

void main(){
  stdout.write("Enter a : ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter b : ");
  int b = int.parse(stdin.readLineSync()!);

  stdout.write("Enter c : ");
  int c = int.parse(stdin.readLineSync()!);

  if(a>b){
    if(a>c){
      print("a is largest.");
    }
  }
  else if(b>c){
    print("b is largest.");
  }
  else{
    print("c is largest.");
  }
}