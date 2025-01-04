import 'dart:io';

void main(){
  stdout.write("Enter weight in pounds : ");
  double w = double.parse(stdin.readLineSync()!);

  stdout.write("Enter height in inches : ");
  double h = double.parse(stdin.readLineSync()!);

  double w1 = w * 0.45359237 ;
  double h1 = h * 0.254;

  print("Your BMI : ${(w1)/(h1*h1)}");
}