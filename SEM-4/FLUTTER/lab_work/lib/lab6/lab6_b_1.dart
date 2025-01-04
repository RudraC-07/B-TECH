import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Appbar'),
        ),
        body:Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                      color:Colors.red,
                      )
                  ),
                  Expanded(
                      child: Container(
                        color:Colors.black,
                      )
                  ),
                  Expanded(
                      child: Container(
                        color:Colors.red,
                      )
                  )
                ],

              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        color:Colors.green,
                      )
                  ),
                  Expanded(
                      child: Container(
                        color:Colors.tealAccent,
                      )
                  ),
                  Expanded(
                      child: Container(
                        color:Colors.green,
                      )
                  )
                ],

              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        color:Colors.yellow,
                      )
                  ),
                  Expanded(
                      child: Container(
                        color:Colors.blueGrey,
                      )
                  ),
                  Expanded(
                      child: Container(
                        color:Colors.yellow,
                      )
                  )
                ],

              ),
            ),

          ],
        )
    );
  }
}
