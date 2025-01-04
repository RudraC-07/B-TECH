import 'dart:io';

void main(){
  stdout.write("Enter a : ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter b : ");
  int b = int.parse(stdin.readLineSync()!);

  stdout.write("Enter c : ");
  int c = int.parse(stdin.readLineSync()!);
  
  (a>b)&&(a>c)?print("a is largest."):(b>c)?print("b is largest."):print("c is largest.");
}