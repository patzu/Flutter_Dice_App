import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Something imaginary!',
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('My App!'),
      ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String path = 'images/dice1.png';
  String path2 = 'images/dice1.png';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: TextButton(
              child: Image.asset(
                path,
              ),
              onPressed: () {
                dice();
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              child: Image.asset(
                path2,
              ),
              onPressed: () {
                dice2();
              },
            ),
          ),
        ],
      ),
    );
  }

  void dice() {
    setState(() {
      int min = 1;
      int max = 7;
      int random = min + Random().nextInt(max - min);
      path = 'images/dice$random.png';
    });
  }

  void dice2() {
    setState(() {
      int min = 1;
      int max = 7;
      int random = min + Random().nextInt(max - min);
      path2 = 'images/dice$random.png';
    });
  }
}
