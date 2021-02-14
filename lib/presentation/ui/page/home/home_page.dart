import 'package:flutter/material.dart';
import 'package:quiz_app/core/domain/question.dart';
import 'package:quiz_app/framework/repository/quiz_repo.dart';
import 'package:quiz_app/presentation/ui/page/home/widget/answer.dart';
import 'package:quiz_app/presentation/ui/page/home/widget/question.dart';
import 'package:quiz_app/presentation/ui/page/home/widget/result.dart';

class HomePage extends StatefulWidget {
  final QuizRepository repository;

  const HomePage({Key key, @required this.repository}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  List<Question> _questions;
  var _questionIndex = 0;
  var _totalScore = 0;

  @override
  void initState() {
    _questions = widget.repository.getQuestions();
    super.initState();
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

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
          title: Text('Personality Measure Quiz '),
        ),
        body: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    print(_questions.length);
    if (_questionIndex < _questions.length) {
      final question = _questions[_questionIndex];

      return widget.repository.getAnswer(question).fold(
            (l) => Container(),
            (r) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  QuestionWidget(question: question),
                  SizedBox(height: 16,),
                  ...r.map(
                    (e) => AnswerWidget((score) => _answerQuestion(score), e),
                  ),
                ],
              ),
            ),
          );
    }

    return Result(_totalScore, _resetQuiz);
  }
}
