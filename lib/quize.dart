import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quize extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final VoidCallback answerQuestion;
  
  var questionIndex;
  Quize(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Container(
          height: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/quize.png',
                // fit:Box.fill ,
              ),
            ),
          ),
        ),
        Question(
          (questions[questionIndex]['questionText'] as String),
        ),
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList(),
        // Answer(answerQuestion),
        // Answer(answerQuestion),
        // Answer(answerQuestion),
        // Answer(answerQuestion),
      ]),
    );
  }
}