import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 5) {
      resultText = 'Bad result!';
    } else if (resultScore <= 15) {
      resultText = 'Medium result!';
    } else if (resultScore <= 20) {
      resultText = 'Good result!';
    } else {
      resultText = 'Very good result!';
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
          Align(
            alignment: Alignment.bottomRight,
            child: FlatButton(
              onPressed: resetHandler,
              textColor: Colors.white,
              color: Colors.black,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(11.0),
              splashColor: Colors.white,
              child: Text(
                'Restart Quiz!',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
