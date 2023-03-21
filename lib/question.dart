import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  final List<Map<String, Object>> answers;

  const Question(
      this.questionText,
      this.answers, {
        Key? key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}