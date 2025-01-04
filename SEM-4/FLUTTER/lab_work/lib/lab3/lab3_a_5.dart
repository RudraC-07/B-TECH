import 'dart:io';

void main(){
  stdout.write("Enter String : ");
  String str = stdin.readLineSync()!;

  String revstr = "";

  for(int i=str.length-1 ; i>=0 ; i--){
    revstr += str[i];
  }

  print("Reverse String : ${revstr}");
}