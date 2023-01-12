import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';

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
  static const List<String> _questions = [
    "What's your favorite color?",
    "What's your favorite animal?",
  ];
  int _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = (_questionIndex + 1) % _questions.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz'),
        ),
        body: Column(children: [
          Question(question: _questions[_questionIndex]),
          ElevatedButton(
            onPressed: _answerQuestion,
            child: const Text('Answer 1'),
          ),
          ElevatedButton(
            onPressed: _answerQuestion,
            child: const Text('Answer 2'),
          ),
          ElevatedButton(
            onPressed: _answerQuestion,
            child: const Text('Answer 3'),
          ),
          ElevatedButton(
            onPressed: _answerQuestion,
            child: const Text('Answer 4'),
          ),
        ]),
      ),
    );
  }
}
