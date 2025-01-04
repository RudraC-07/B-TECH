import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lab7A2 extends StatelessWidget {
  const Lab7A2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomStyle(30,name: "Kishan", clr: Colors.teal),
    );
  }
}

Widget CustomStyle(double fs,{required String name,required Color clr}){
  return Text(name,style: TextStyle(
      color: clr,
    fontSize: fs
  ),);}