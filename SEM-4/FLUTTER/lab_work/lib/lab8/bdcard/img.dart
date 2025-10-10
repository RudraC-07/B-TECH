import 'package:flutter/material.dart';

class BdCard extends StatelessWidget {
  BdCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text("Birthday Card",style: TextStyle(color: Colors.white)))
      ),
      body: Form(child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 150,left: 50,right: 50),
            child: TextFormField(
              decoration: InputDecoration(label: Text('Enter name')),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: ()=>{
            // Navigator.push(context, MaterialPageRoute(builder: (context) => ,);)
          }, child: Text('Generate'))
        ],
      )),
    );
  }
}
