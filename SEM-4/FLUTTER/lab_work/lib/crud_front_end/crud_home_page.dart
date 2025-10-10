import 'package:flutter/material.dart';
import 'package:lab_work/crud_front_end/names.dart';

class CrudDemo extends StatefulWidget {
  const CrudDemo({super.key});

  @override
  State<CrudDemo> createState() => _CrudDemoState();
}

class _CrudDemoState extends State<CrudDemo> {
  TextEditingController nameController = TextEditingController();
  TextEditingController editController = TextEditingController();
  List<Names> names = List.empty(growable: true);

  void addItems() {
    String name = nameController.text;
    if (name.isNotEmpty) {
      setState(() {
        names.add(Names(name));
      });
      nameController.clear();
    }
  }

  void deleteItems(int index) {
    setState(() {
      names.removeAt(index);
    });
  }

  void updateItems(int index) {
    editController.text = names[index].name!;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Edit Name"),
          content: TextField(
            controller: editController,
            decoration: InputDecoration(hintText: "Enter new name"),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                String updatedName = editController.text;
                if (updatedName.isNotEmpty) {
                  setState(() {
                    names[index].name = updatedName;
                  });
                }
                Navigator.pop(context);
              },
              child: Text("Save"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancel"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CRUD operation"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(hintText: "Enter name"),
                  controller: nameController,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  addItems();
                },
                child: Text("Add"),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, index) => getListItem(index),
            ),
          )
        ],
      ),
    );
  }

  Widget getListItem(int index) {
    return Card(
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(names[index].name!)],
        ),
        trailing: SizedBox(
          width: 70,
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  updateItems(index);
                },
                child: Icon(Icons.edit),
              ),
              InkWell(
                onTap: () {
                  deleteItems(index);
                },
                child: Icon(Icons.delete),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
