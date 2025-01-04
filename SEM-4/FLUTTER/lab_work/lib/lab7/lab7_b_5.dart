import 'package:flutter/material.dart';

class Lab7A5 extends StatefulWidget {
  Lab7A5({super.key});

  @override
  State<Lab7A5> createState() => _Lab7A5State();
}

class _Lab7A5State extends State<Lab7A5> {
  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: name,
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              
            });
          }, child: Text("Submit")),
          Text(name.text)
        ],
      ),
    );
  }
}