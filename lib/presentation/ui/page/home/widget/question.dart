import 'package:flutter/material.dart';
import 'package:quiz_app/core/domain/question.dart';

class QuestionWidget extends StatelessWidget {
  final Question question;

  QuestionWidget({@required this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        question.text,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
