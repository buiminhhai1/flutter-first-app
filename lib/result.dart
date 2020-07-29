import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText =
          'You are awesome and innocent! ' + resultScore.toString() + ' score';
    } else if (resultScore <= 12) {
      resultText = 'You are so pretty ' + resultScore.toString() + ' score';
    } else {
      resultText = 'You are a god ' + resultScore.toString() + ' score';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text(
              'Restart Quiz!',
              style: TextStyle(color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}
