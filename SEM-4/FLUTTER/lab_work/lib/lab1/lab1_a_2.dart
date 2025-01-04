import 'dart:io';

void main(){
  stdout.write("Enter 1st number : ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter 2nd number : ");
  int b = int.parse(stdin.readLineSync()!);

  print("Sum : ${a+b}");
}