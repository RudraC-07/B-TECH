import 'dart:io';

void main(){
  print("Enter numbers and Enter 0 to stop : ");
  int n;
  int psum = 0;
  int nsum = 0;
  while(true){
    n = int.parse(stdin.readLineSync()!);
    if(n==0){
      break;
    }
    else if(n<0 && n%2!=0){
      nsum += n;
    }
    else if(n>0 && n%2==0){
      psum += n;
    }
  }
  print("Sum of all Positive Even No. : ${psum}");
  print("Sum of all Negative Odd No. : ${nsum}");
}