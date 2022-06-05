// ignore_for_file: avoid_print

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
  var questionIdx = 0;
  var totalScore = 0;
  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIdx += 1;
    });
    print('answer-chosen');
    print(questionIdx);
    print(totalScore);
  }

  void resetQuize() {
    setState(() {
      questionIdx = 0;
      totalScore = 0;
    });
  }

  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite proffesion?',
        'answers': [
          {'text': 'Doctor', 'score': 10},
          {'text': 'Programmer', 'score': 9},
          {'text': 'Engineer', 'score': 3},
          {'text': 'Carpenter', 'score': 5}
        ],
      },
      {
        'questionText': 'Do you like pets?',
        'answers': [
          {'text': 'yes', 'score': 5},
          {'text': 'No', 'score': 10},
        ],
      },
      {
        'questionText': 'What\'s your favorite Footbal player?',
        'answers': [
          {'text': 'Benzema', 'score': 9},
          {'text': 'Messi', 'score': 10},
          {'text': 'Mane', 'score': 7},
          {'text': 'Ronaldo', 'score': 6}
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quize'),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: questionIdx < questions.length
            ? Quize(
                answerQuestion: answerQuestion,
                questionIndex: questionIdx,
                questions: questions,
              )
            : Result(totalScore, resetQuize),
      ),
    );
  }
}
