import 'package:flutter/material.dart';

import 'names.dart';

class CrudOperation extends StatefulWidget {
  const CrudOperation({super.key});

  @override
  State<CrudOperation> createState() => _CrudOperationState();
}

class _CrudOperationState extends State<CrudOperation> {

  TextEditingController nameController = TextEditingController();
  TextEditingController editController = TextEditingController();
  TextEditingController searchController = TextEditingController();
  List<Names> names = List.empty(growable: true);
  List<Names> filteredNames = List.empty(growable: true);

  @override
  void initState() {
    super.initState();
    filteredNames = names;
  }

  void addItems(){
    String name = nameController.text;

    if(name.isNotEmpty){
      setState(() {
        names.add(Names(name));
      });
    }
    nameController.clear();
  }

  void deleteItems(int index){
    setState(() {
      names.removeAt(index);
    });
  }

  void editItems(int index){
    editController.text = names[index].name!;

    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text("Edit name"),
            content: TextField(
              controller: editController,
              decoration: InputDecoration(hintText: "Enter new name"),
            ),
            actions: <Widget>[
              TextButton(onPressed: (){
                String updatedName = editController.text;
                if (updatedName.isNotEmpty) {
                  setState(() {
                    filteredNames[index].name = updatedName;
                    filteredNames = names;
                  });
                }
                Navigator.pop(context);
              }, child: Text("Save")),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancel"),
              ),
            ],
          );
    });
  }

  void searchNames(String query) {
    List<Names> results = names.where((nameItem) {
      return nameItem.name!.toLowerCase().contains(query.toLowerCase());
    }).toList();

    setState(() {
      filteredNames = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(child: Text("Crud Operation")),
        backgroundColor: Colors.teal,

      ),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: ("Enter name"),
                        border: OutlineInputBorder()
                    ),
                    controller: nameController,
                  ),
                ),
                SizedBox(width: 20,),
                ElevatedButton(onPressed: (){
                  setState(() {
                    addItems();
                  });

                }, child: Text("Add"))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: searchController,
                onChanged: searchNames,
                decoration: InputDecoration(
                  hintText: "Search names...",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: filteredNames.length,
                  itemBuilder: (context, index) => getItems(index)),
            )
          ],
        ),
      ),
    );
  }

  Widget getItems(int index) {
    return Card(
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(filteredNames[index].name!)],
        ),
        trailing: SizedBox(
          width: 70,
          child: Row(
            children: [
              InkWell(
                  onTap: (){editItems(index);},
                  child: Icon(Icons.edit)
              ),
              InkWell(
                  onTap: (){deleteItems(index);},
                  child: Icon(Icons.delete))
            ],
          ),
        ),
      ),
    );
  }
}
