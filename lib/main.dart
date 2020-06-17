import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
      MyRandom()
  );
}

class MyRandom extends StatefulWidget {
  @override
  _MyRandomState createState() => _MyRandomState();
}

class _MyRandomState extends State<MyRandom> {
  int rnumber = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
            backgroundColor: Colors.black45,
            body: FlatButton(
              onPressed: (){
                setState(() {
                  rnumber = Random().nextInt(10);
                });
              },
              splashColor: Colors.black12,
              child: Center(
                child: Text(
                  "$rnumber",
                  style: TextStyle(
                    fontSize:150,
                    color: Colors.amberAccent,
                  ),
                ),
              ),
            )
        )
    );
  }
}



