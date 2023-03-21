import 'package:flutter/material.dart';
import 'package:flutter_first/question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Question> questions;
  final int questionIndex;
  final VoidCallback answerQuestion;

  const Quiz({
    Key? key,
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex].questionText),
        ...questions[questionIndex]
            .answers
            .map((answer) => Answer(answerQuestion, answer['text'] as String))
            .toList()
      ],
    );
  }
}