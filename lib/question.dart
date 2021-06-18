import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity,
      padding:  EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      child: Text(
      questionText, 
      style: TextStyle(fontSize: 20, 
                       color: Color.fromRGBO(50, 51, 48, 0.8),
                       fontFamily: 'Times New Roman',),
      textAlign: TextAlign.center,
      ));
  }
}
