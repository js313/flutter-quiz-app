import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const List<String> questions = [
    "What's your favorite color?",
    "What's your favorite animal?",
  ];
  int questionIndex = 0;

  MyApp({super.key});

  void answerQuestion() {
    questionIndex++;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz'),
        ),
        body: Column(children: [
          Text(questions[questionIndex]),
          ElevatedButton(
            onPressed: answerQuestion,
            child: const Text('Answer 1'),
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: const Text('Answer 2'),
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: const Text('Answer 3'),
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: const Text('Answer 4'),
          ),
        ]),
      ),
    );
  }
}
