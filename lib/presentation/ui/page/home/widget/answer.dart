import 'package:flutter/material.dart';
import 'package:quiz_app/core/domain/answer.dart';

class AnswerWidget extends StatelessWidget {
  final void Function(int) selectHandler;
  final Answer answer;

  AnswerWidget(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(),
        child: Text(answer.text),
        onPressed: () => selectHandler(answer.score),
      ),
    );
  }
}
