import 'dart:io';

double simpleInterest(double p, double r, double t){
  return (p*r*t)/100;
}

void main(){

  stdout.write("Enter Principle : ");
  double p = double.parse(stdin.readLineSync()!);

  stdout.write("Enter Rate of Interest : ");
  double r = double.parse(stdin.readLineSync()!);

  stdout.write("Enter Time period : ");
  double t = double.parse(stdin.readLineSync()!);

  print("Simple interest : ${simpleInterest(p, r, t)}");
}