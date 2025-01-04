import 'dart:io';

void main(){
  stdout.write("Enter Temp. in Fehrenheit : ");
  int f = int.parse(stdin.readLineSync()!);

  print("Temp in Celcius : ${(f-32)*(5/9)}");
}