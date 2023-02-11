import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';
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
  static const List<Map> _questions = [
    {
      "questionText": "What's your favorite color?",
      "answers": ["Red", "Black", "Green", "White"]
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": ["Dog", "Cat", "Rabbit", "Possum"]
    },
  ];
  int _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
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
                  : const Result(),
            )));
  }
}
