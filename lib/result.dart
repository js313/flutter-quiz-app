import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;
  const Result({super.key, required this.totalScore, required this.resetQuiz});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Survey complete! Your score: $totalScore"),
          ElevatedButton(
            onPressed: resetQuiz,
            child: const Text("Reset Survey"),
          ),
        ]);
  }
}
