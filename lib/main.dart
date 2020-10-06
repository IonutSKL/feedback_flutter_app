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
      'answers': ['Foarte bun', 'Bun', 'Slab', 'Foarte slab']
    },
    {
      'questionText': 'Cum a fost servirea azi?',
      'answers': ['Foarte bun', 'Bun', 'Slab', 'Foarte slab']
    },
    {
      'questionText': 'Cum a fost x azi?',
      'answers': ['Foarte bun', 'Bun', 'Slab', 'Foarte slab']
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    //var aBool = true;
    //aBool = false;
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
              : Result()),
    );
  }
}
