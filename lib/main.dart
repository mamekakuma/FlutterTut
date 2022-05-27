import 'package:flutter/material.dart';
import './quetion.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

// ignore: use_key_in_widget_constructors
class MyAppState extends State<MyApp> {
  void answer() {
    setState(() {
      questionIdx += 1;
    });
    print('answer chosen');
    print(questionIdx);
  }

  var questionIdx = 0;
  Widget build(BuildContext context) {
    var question = [
      'What\'s your favorite color?',
      'what\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Myfirst try'),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: Column(children: [
          Question(question[questionIdx%2]),
          ElevatedButton(
            onPressed: answer,
            child: Text('Ans 1'),
          ),
          ElevatedButton(
            onPressed: answer,
            child: Question('Ans 2'),
          ),
          ElevatedButton(
            onPressed: answer,
            child: Question('Ans 3'),
          ),
          ElevatedButton(
            onPressed: answer,
            child: Question('Ans 4'),
          ),
        ]),
      ),
    );
  }
}
