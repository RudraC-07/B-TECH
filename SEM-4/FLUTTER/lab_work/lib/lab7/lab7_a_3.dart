import 'package:flutter/material.dart';

class Lab7A3 extends StatelessWidget {
  Lab7A3({super.key});
  TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: name,
          ),
          ElevatedButton(onPressed: ()=>print(name.text), child: Text("Submit"))
        ],
      ),
    );
  }
}

