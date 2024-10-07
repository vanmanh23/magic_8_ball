import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.black38,
          title: Text("Ask me anything"),
        ),
        body: QuestionPage(),
      ),

    );
  }
}

class QuestionPage extends StatefulWidget {
  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  int ballNumber = 1;

  void imagechange() {
    setState(
            () {
          ballNumber = Random().nextInt(5) + 1;
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child: TextButton(
              onPressed: () {
                imagechange();
              },
            child: Image.asset('images/ball$ballNumber.png'),
          ))
        ],
      ),
    );
  }
}

