import 'package:flutter/material.dart';
import './quize.dart';
import './result.dart';

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
  void answerQuestion() {
    setState(() {
      questionIdx += 1;
    });
    print('answer chosen');
    print(questionIdx);
  }

  var questionIdx = 0;
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite proffesion?',
        'answers': ['Doctor', 'Programmer', 'Engineer', 'Carpenter'],
      },
      {
        'questionText': 'Do you like pets?',
        'answers': ['Yes', 'No'],
      },
      {
        'questionText': 'What\'s your favorite Footbal player?',
        'answers': ['Benzema', 'Mbappe', 'Messi', 'Madison'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Quize'),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          body: questionIdx < questions.length
              ? Quize(answerQuestion: answerQuestion, 
              questionIndex: questionIdx,
              questions:questions,
              )
              : Result()),
    );
  }
}
