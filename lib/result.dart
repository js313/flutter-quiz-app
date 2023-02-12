import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;
  const Result({super.key, required this.totalScore, required this.resetQuiz});

  String get getResultString {
    if (totalScore < 5) {
      return "Bad!";
    } else if (totalScore < 7) {
      return "Below Average!";
    } else if (totalScore < 15) {
      return "Average!";
    } else if (totalScore < 20) {
      return "Above Average!";
    }
    return "Good!";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(getResultString,
              style:
                  const TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
          ElevatedButton(
            onPressed: resetQuiz,
            child: const Text("Reset Survey"),
          ),
        ]);
  }
}
