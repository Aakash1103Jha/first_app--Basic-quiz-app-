import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

// if there is only one expression inside a function
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is your faviorite color?',
      'answers': ['red', 'yellow', 'blue', 'green']
    },
    {
      'questionText': 'What is your faviorite animal?',
      'answers': ['dog', 'snake', 'panda', 'cat']
    },
    {
      'questionText': 'What is your faviorite day?',
      'answers': ['thursday', 'monday', 'tuesday', 'sunday']
    },
  ];
  var _qIndex = 0;
  void _onAnswer() {
    setState(() => _qIndex = _qIndex + 1);
    print(_qIndex);
    if (_qIndex < _questions.length) {
      print('We have more!!');
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    // var questions = [
    //   'What is your faviorite color?',
    //   'What is your favorite animal?',
    //   'What is your favorite food?'
    // ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
            ),
            body: _qIndex < _questions.length ? Quiz(answerQuestion: _onAnswer, questionIndex: _qIndex, questions: _questions,) : Result()));
  }
}
