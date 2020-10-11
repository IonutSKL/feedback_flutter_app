import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Cum a fost mâncarea azi?',
      'answers': [
        {'text': 'Foarte bun', 'score': 10},
        {'text': 'Bun', 'score': 6},
        {'text': 'Slab', 'score': 3},
        {'text': 'Foarte slab', 'score': 1},
      ]
    },
    {
      'questionText': 'Cum a fost servirea azi?',
      'answers': [
        {'text': 'Foarte bun', 'score': 10},
        {'text': 'Bun', 'score': 6},
        {'text': 'Slab', 'score': 3},
        {'text': 'Foarte slab', 'score': 1},
      ]
    },
    {
      'questionText': 'Cum a fost nivelul de curatenie azi?',
      'answers': [
        {'text': 'Foarte bun', 'score': 10},
        {'text': 'Bun', 'score': 6},
        {'text': 'Slab', 'score': 3},
        {'text': 'Foarte slab', 'score': 1},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalscore = 0;

  void _answerQuestion(int score) {
    //var aBool = true;
    //aBool = false;

    _totalscore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Feedback App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalscore)),
    );
  }
}
