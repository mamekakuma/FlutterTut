import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText = 'Congrats you are done';
    if (resultScore <= 18) {
      resultText = 'You need to improve';
    } else if (resultScore > 22 && resultScore < 25) {
      resultText = 'u r a dreamer bruh';
    } else {
      resultText = 'u are on the pick of them all bruh';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text('Restart Quize'),
          )
        ],
      ),
    );
  }
}
