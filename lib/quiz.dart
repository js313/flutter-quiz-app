import 'package:flutter/material.dart';

import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final List<Map> _questions;
  final int _questionIndex;
  final VoidCallback _answerQuestion;

  const Quiz(
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
          answerQuestion: _answerQuestion,
          answerText: answer,
        );
      }),
    ]);
  }
}
