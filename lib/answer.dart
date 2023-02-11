import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQuestion;
  final String answerText;
  final int score;

  const Answer({
    super.key,
    required this.answerQuestion,
    required this.answerText,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => answerQuestion(score),
        child: Text(answerText),
      ),
    );
  }
}
