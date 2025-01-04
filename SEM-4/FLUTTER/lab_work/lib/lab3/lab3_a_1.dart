import 'dart:io';

void main(){
  stdout.write("Enter 1st number : ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter 2nd number : ");
  int b = int.parse(stdin.readLineSync()!);

  print("Numbers between two given numbers which is divisible by 2 but not divisible by 3 : ");
  
  for(int i=a+1 ; i<b ; i++){
    if(i%2==0 && i%3!=0){
      print(i);
    }
  }
}