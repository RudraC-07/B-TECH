import 'package:flutter/material.dart';

class Layout1 extends StatelessWidget {
  const Layout1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Appbar'),
        ),
        body:Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                        color:Colors.red,
                      )
                  ),
                  Expanded(
                      child: Container(
                        color:Colors.black,
                      ),
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
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                        color:Colors.green,
                      ),
                    flex: 2,
                  ),
                  Expanded(
                      child: Container(
                        color:Colors.tealAccent,
                      ),
                    flex: 2,
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
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                        color:Colors.yellow,
                      )
                  ),
                  Expanded(
                      child: Container(
                        color:Colors.blueGrey,
                      ),
                    flex: 2,
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
