import 'package:flutter/material.dart';
import 'package:flutter_first/result.dart';
import './quiz.dart';
import './question.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      if (_questionIndex < _questions.length - 1) {
        _questionIndex++;
      } else {
       Result;
      }
    });
  }

  final _questions = const [
    Question(
      "What's your favourite color?",
      [
        {"text": "Black", "score": 1},
        {"text": "green", "score": 2},
        {"text": "blue", "score": 1},
        {"text": "white", "score": 4},
      ],
    ),
    Question(
      "What's your favourite animal?",
      [
        {"text": "Cat", "score": 4},
        {"text": "Dog", "score": 5},
        {"text": "snake", "score": 3},
        {"text": "salamander", "score": 1},
        {"text": "your mom", "score": 5},
      ],
    ),
    Question(
      "What's your favourite programming language?",
      [
        {'text': 'Kotlin', 'score': 5},
        {'text': 'Swift', 'score': 3},
        {'text': 'C++', 'score': 2},
        {'text': 'Dart', 'score': 4},
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    const String appBarTitle = "My First App";

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appBarTitle),
        ),
        body: Quiz(
          answerQuestion: _answerQuestion,
          questionIndex: _questionIndex,
          questions: _questions,
        ),
      ),
    );
  }
}