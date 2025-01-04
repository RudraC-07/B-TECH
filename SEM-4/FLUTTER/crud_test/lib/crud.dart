import './util/const_variables.dart';

class User{
  List<Map<String,dynamic>>list = [];

  void addUser({required name,required age,required email}){
    Map<String,dynamic> map = {};
    map[NAME] = name;
    map[AGE] = age;
    map[EMAIL] = email;
    list.add(map);
  }

  void updateUser({required name,required age,required email,required id}){
    Map<String,dynamic> map = {};
    map[NAME] = name;
    map[AGE] = age;
    map[EMAIL] = email;
    list[id] = map;
  }

  void listUser(){
    for(var ele in list){
      print("Name : ${ele[NAME]}, Age : ${ele[AGE]}, Email : ${ele[EMAIL]}");
    }
  }

  void deleteUser(int id){
    list.removeAt(id);
  }
}