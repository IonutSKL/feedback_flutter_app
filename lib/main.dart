import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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

  final questions = const [
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

    if (_questionIndex < questions.length){
      print('here');

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
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
