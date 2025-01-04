import 'dart:io';

void main(){
  print("Enter a number : ");
  int a = int.parse(stdin.readLineSync()!);
  print(a);

  int a1=50;
  int? b1=a1!;

  print("Enter Name : ");
  String name = stdin.readLineSync()!;
  print(name);
}