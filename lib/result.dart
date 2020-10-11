import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 5) {
      resultText = 'Bad result!';
    } else if (resultScore <= 10){
      resultText = 'Average result!';
    } else if (resultScore <= 15){
      resultText = 'Good result!';
    } else {
      resultText = 'Very good result!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
