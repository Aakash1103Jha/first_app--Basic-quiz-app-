import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerHandler;
  final String answerText;

  Answer(this.answerHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 60,
      padding: EdgeInsets.all(10),
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: answerHandler,
      ),
    );
  }
}
