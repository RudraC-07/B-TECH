import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class CrudDb extends StatefulWidget {
  const CrudDb({super.key});

  @override
  State<CrudDb> createState() => _CrudDbState();
}

class _CrudDbState extends State<CrudDb> {
  late Database _database;
  List<Map<String,dynamic>> data = [];

  Future<void> _initDatabase() async {
    _database = await openDatabase(
      join(await getDatabasesPath(),'todos_database.db'),
      onCreate: (db, version){
        return db.execute(
          "CREATE TABLE todo(id INTEGER PRIMARY KEY AUTO INCREMENT,title TEXT,desc TEXT)"
        );
      },
      version: 1
    );
  }

  Future<void> _fetchdata() async{
    List<Map<String,dynamic>> userdata = await _database.query('todo');
    setState(() {
      data=userdata;
    });
  }

  Future<void> _addTodo(String task, String desc) async {
    if (task.isNotEmpty && desc.isNotEmpty){
      await _database.insert(
        'todo',
        {'title': task, 'desc':desc}
      );
      print("add");
    }
  }

  Future<void> _deleteTodo(int id) async {
    await _database.delete(
      "todo",
      where: 'id=?',
      whereArgs: [id],
    );
    _fetchdata();
  }

  Future<void> _updateTodo(int id , String newTitle, String newDec) async {
    await _database.update(
      'todo',
      {'title':newTitle, 'desc':newDec},
      where: 'id=?',
      whereArgs: [id],
    );
    _fetchdata();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ElevatedButton(onPressed: (){

      },
          child: Text("ADD")),
    );
  }
}
