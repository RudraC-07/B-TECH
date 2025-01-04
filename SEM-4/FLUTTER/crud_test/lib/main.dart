import 'dart:io';

import 'crud.dart';
void main(){
  User user = User();

  int choice;

  do {
    print('Select Your Choice From Below Available Options:'
        '\n 1. Insert User'
        '\n 2. Update User'
        '\n 3. Delete User'
        '\n 4. List User'
        '\n 5. Exit Application');
    choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
      //INSERT USER
        stdout.write('Enter Name : ');
        String name = stdin.readLineSync()!;
        stdout.write('Enter Age : ');
        int age = int.parse(stdin.readLineSync()!);
        stdout.write('Enter Email : ');
        String email = stdin.readLineSync()!;
        user.addUser(name: name, age: age, email: email);
        break;

      case 2:
        stdout.write("Enter ID : ");
        int index = int.parse(stdin.readLineSync()!);

        stdout.write('Enter Name : ');
        String name = stdin.readLineSync()!;
        stdout.write('Enter Age : ');
        int age = int.parse(stdin.readLineSync()!);
        stdout.write('Enter Email : ');
        String email = stdin.readLineSync()!;
        user.updateUser(name: name, age: age, email: email, id: index);
        break;

      case 3:
        stdout.write("Enter ID to delete : ");
        int index = int.parse(stdin.readLineSync()!);
        user.deleteUser(index);
        break;

      case 4:
        user.listUser();
        break;

      case 5:
        print("Exit");
        break;

      default:
        print("Enter valid choice");
        break;
    }
  } while (choice != 5);
}