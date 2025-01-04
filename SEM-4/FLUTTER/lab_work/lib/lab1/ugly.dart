import 'dart:io';

void main(){
  stdout.write("Enter a no. : ");
  int n = int.parse(stdin.readLineSync()!);

  var prime = [];
  bool flag = true;

  for(int i=2 ; i<n ; i++){
    if(n%i==0){
      for(int j=2 ; j<=i/2 ; j++){
        if(i%j!=0){
          prime.add(i);
        }
      }
    }
  }
  for(int i=0 ; i<prime.length ; i++){
    if(prime.elementAt(i)==2 || prime.elementAt(i)==3 || prime.elementAt(i)==5 && prime.elementAt(i)<=5){
      flag = true;
    }
    else{
      flag = false;
    }
  }

  if(flag == true){
    print("Number is Ugly number.");
  }
  else{
    print("Number is  not Ugly number.");
  }
}