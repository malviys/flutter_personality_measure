import 'package:dartz/dartz.dart';
import 'package:quiz_app/core/domain/answer.dart';
import 'package:quiz_app/core/domain/question.dart';
import 'package:quiz_app/core/domain/quiz.dart';
import 'package:quiz_app/core/failure/quiz_failure.dart';

final _quiz = [
  Quiz(
    questionText: Question(text: 'What\'s your favorite color?'),
    answers: [
      Answer(text: 'Black', score: 10),
      Answer(text: 'Red', score: 5),
      Answer(text: 'Green', score: 3),
      Answer(text: 'White', score: 1),
    ],
  ),
  Quiz(
    questionText: Question(text: 'What\'s your favorite animal?'),
    answers: [
      Answer(text: 'Rabbit', score: 3),
      Answer(text: 'Snake', score: 11),
      Answer(text: 'Elephant', score: 5),
      Answer(text: 'Lion', score: 9),
    ],
  ),
  Quiz(
    questionText: Question(text: 'What\'s your favorite color?'),
    answers: [
      Answer(text: 'Max', score: 1),
      Answer(text: 'Max', score: 1),
      Answer(text: 'Max', score: 1),
      Answer(text: 'Max', score: 1),
    ],
  )
];

class QuizRepository {
  List<Question> getQuestions() => _quiz.map((e) => e.questionText).toList();

  Either<QuizFailure, List<Answer>> getAnswer(Question question) {
    for (var item in _quiz) {
      if (item.questionText == question) {
        return Right(item.answers);
      }
    }

    return Left(QuizFailure.noQuestionFound());
  }
}
