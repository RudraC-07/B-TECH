import 'dart:io';

int largeNumber(int a, int b){
  if(a>b){
    return a;
  }
  else{
    return b;
  }
  return 0;
}

void main(){

  stdout.write("Enter 1st number : ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter 2nd number : ");
  int b = int.parse(stdin.readLineSync()!);

  print("Largest number : ${largeNumber(a, b)}");
}