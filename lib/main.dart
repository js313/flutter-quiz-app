import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //underscore makes the property/Class private cannot be accessed anywhere else other than this file
  static const List<Map<String, Object>> _questions = [
    {
      "questionText": "What's your favorite color?",
      "answers": ["Red", "Black", "Green", "White"],
      "score": [4, 1, 8, 9]
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": ["Dog", "Cat", "Rabbit", "Possum"],
      "score": [10, 9, 8, 7]
    },
    {
      "questionText": "What's your favorite place?",
      "answers": ["Maldives", "Paris", "Dubai", "Malibu"],
      "score": [8, 3, 1, 9]
    },
  ];
  int _questionIndex = 0;
  int _totalScore = 0;
  void _answerQuestion(int score) {
    setState(() {
      _questionIndex++;
      _totalScore += score;
    });
  }

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz'),
        ),
        body: Center(
          child: _questions.length > _questionIndex
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion)
              : Result(
                  totalScore: _totalScore,
                  resetQuiz: resetQuiz,
                ),
        ),
      ),
    );
  }
}
