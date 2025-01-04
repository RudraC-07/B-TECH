import 'dart:io';

void main() {
  stdout.write("Enter number : ");
  int n = int.parse(stdin.readLineSync()!);
  int c = 0;

  for(int i=1 ; i<n ; i++){
    if(n%i==0){
      c++;
    }
  }

  if(c<=2){
    print("Number is prime.");
  }
  else{
    print("Number is not prime.");
  }
}