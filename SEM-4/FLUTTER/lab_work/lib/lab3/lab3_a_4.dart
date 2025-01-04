import 'dart:io';

void main() {
  stdout.write("Enter number : ");
  int n = int.parse(stdin.readLineSync()!);
  int r;
  int rev = 0;

  while(n!=0){
    r = n%10;
    rev = rev*10+r;
    n = n~/10;
  }
  print("Reverse number : ${rev}");
}