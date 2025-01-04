import 'package:flutter/material.dart';

class lab8_a_1 extends StatelessWidget {
  lab8_a_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BackgroundImage'),
      ),
      body: Stack(
        children: [
          Expanded(child: Image.asset("assets/images/moon.jpg",alignment: Alignment.center)),
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          Text("This is moon",style: TextStyle(color: Colors.white),),

        ],
      ),
    );
  }
}
