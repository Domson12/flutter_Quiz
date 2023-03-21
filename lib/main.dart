import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      if (_questionIndex < _questions.length - 1) {
        _questionIndex++;
      } else {
        Fluttertoast.showToast(
            msg: "Run out of questions",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.blueGrey,
            textColor: Colors.white,
            fontSize: 20.0);
      }
    });
  }

  final _questions = [
    "What's your favorite color?",
    "What's your favorite animal?"
  ];

  @override
  Widget build(BuildContext context) {
    const appBarTitle = "My First App";

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appBarTitle),
        ),
        body: Column(
          children: [
            Text(_questions[_questionIndex]),
            ...[1, 2, 3].map(
              (number) => ElevatedButton(
                onPressed: _answerQuestion,
                child: Text("Answer $number"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
