import 'package:flutter/material.dart';

class Single extends StatefulWidget {
  const Single({super.key});

  @override
  State<Single> createState() => _SingleState();
}

class _SingleState extends State<Single> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Single child scroll view"),),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(width: 400, height: 400, child: Text("Rudra",style: TextStyle(backgroundColor: Colors.red),)),
            Container(width: 400, height: 400, child: Text("Rudra",style: TextStyle(backgroundColor: Colors.red),)),
            Container(width: 400, height: 400, child: Text("Rudra",style: TextStyle(backgroundColor: Colors.red),)),
            Container(width: 400, height: 400, child: Text("Rudra",style: TextStyle(backgroundColor: Colors.red),)),
            Container(width: 400, height: 400, child: Text("Rudra",style: TextStyle(backgroundColor: Colors.red),)),
            Container(width: 400, height: 400, child: Text("Rudra",style: TextStyle(backgroundColor: Colors.red),)),
          ],
        ),
      ),
    );
  }
}
