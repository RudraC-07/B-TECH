import 'dart:io';

void main(){
  stdout.write("Enter a number : ");
  int a = int.parse(stdin.readLineSync()!);

  if(a<0){
    print("Number is negative.");
  }
  else if(a==0){
    print("Number is Zero.");
  }
  else{
    print("Number is positive.");
  }
}