import 'dart:io';

void main(){
  print("Enter 5 subjects marks : ");

  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  int c = int.parse(stdin.readLineSync()!);
  int d = int.parse(stdin.readLineSync()!);
  int e = int.parse(stdin.readLineSync()!);

  print("Percentage : ${((a+b+c+d+e)/5)}");
}