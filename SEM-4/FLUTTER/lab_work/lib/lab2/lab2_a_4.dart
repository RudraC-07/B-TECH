import 'dart:io';

void main(){
  print("Enter marks : ");
  double m1 = double.parse(stdin.readLineSync()!);
  double m2 = double.parse(stdin.readLineSync()!);
  double m3 = double.parse(stdin.readLineSync()!);
  double m4 = double.parse(stdin.readLineSync()!);
  double m5 = double.parse(stdin.readLineSync()!);

  double per = (m1+m2+m3+m4+m5)/5;

  if(per<35){
    print("Fail");
  }
  else if(per>=35 && per<45){
    print("Pass");
  }
  else if(per>=45 && per<60){
    print("Second class");
  }
  else if(per>=60 && per<70){
    print("First class");
  }
  else if(per>=70){
    print("Distinction");
  }
}