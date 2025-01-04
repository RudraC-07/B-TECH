import 'dart:io';

void main(){
  stdout.write("Enter meters : ");
  double m = double.parse(stdin.readLineSync()!);

  double f = 3.28084 * m;
  print("Meter to Feet : ${f}");
}