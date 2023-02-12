import 'package:flutter/material.dart';

import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

//ignore: must_be_immutable
class Quiz extends StatelessWidget {
  final List<Map> _questions;
  final int _questionIndex;
  final Function _answerQuestion;
  int index = 0;

  Quiz(
      {super.key,
      required questions,
      required questionIndex,
      required answerQuestion})
      : _questions = questions,
        _questionIndex = questionIndex,
        _answerQuestion = answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(question: _questions[_questionIndex]["questionText"]),
      ..._questions[_questionIndex]["answers"].map((answer) {
        return Answer(
            answerQuestion: (int score) => _answerQuestion(score),
            answerText: answer,
            score: _questions[_questionIndex]["score"][index++]);
      }),
    ]);
  }
}
