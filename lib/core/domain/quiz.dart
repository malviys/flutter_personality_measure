import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:quiz_app/core/domain/answer.dart';
import 'package:quiz_app/core/domain/question.dart';

class Quiz {
  final Question questionText;
  final List<Answer> answers;

  Quiz({
    this.questionText,
    this.answers,
  });

  Quiz copyWith({
    Question questionText,
    List<Answer> answers,
  }) {
    return Quiz(
      questionText: questionText ?? this.questionText,
      answers: answers ?? this.answers,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'questionText': questionText?.toMap(),
      'answers': answers?.map((x) => x?.toMap())?.toList(),
    };
  }

  factory Quiz.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Quiz(
      questionText: Question.fromMap(map['questionText']),
      answers: List<Answer>.from(map['answers']?.map((x) => Answer.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Quiz.fromJson(String source) => Quiz.fromMap(json.decode(source));

  @override
  String toString() => 'Quiz(questionText: $questionText, answers: $answers)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Quiz &&
        o.questionText == questionText &&
        listEquals(o.answers, answers);
  }

  @override
  int get hashCode => questionText.hashCode ^ answers.hashCode;
}
