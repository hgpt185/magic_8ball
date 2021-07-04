import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      Tell(),
    );

class Tell extends StatefulWidget {
  const Tell({Key? key}) : super(key: key);

  @override
  _TellState createState() => _TellState();
}

class _TellState extends State<Tell> {
  int imagenumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Ask Me Anything',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                fontFamily: 'sexifont',
              ),
            ),
          ),
          backgroundColor: Colors.blue[900],
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              setState(() {
                imagenumber = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$imagenumber.png'),
          ),
        ),
      ),
    );
  }
}
