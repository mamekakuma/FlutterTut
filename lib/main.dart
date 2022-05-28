import 'package:flutter/material.dart';
import './quetion.dart';
import './answer.dart';
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
    var question = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['RAbbit', 'Cat', 'Dog', 'Snake'],
      },
      {
        'questionText': 'What\'s your favorite pesrson?',
        'answers': ['Benzema', 'Mbappe', 'Messi', 'Madison'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quize'),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: Column(children: [
          Question(
            (question[questionIdx % 3]['questionText'] as String ),
          ),
          ...(question[questionIdx % 3]['answers'] as List<String>)
              .map((answer) {
            return Answer(answerQuestion, answer);
          }).toList(),
          // Answer(answerQuestion),
          // Answer(answerQuestion),
          // Answer(answerQuestion),
          // Answer(answerQuestion),
        ]),
      ),
    );
  }
}
