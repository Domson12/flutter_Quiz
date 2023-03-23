import 'package:flutter/cupertino.dart';

class Result extends StatelessWidget {
  final int resultScore;

  const Result({super.key, required this.resultScore});

  String get resultPhrase {
    var resultText = "you did it! score: $resultScore";
    if (resultScore <= 8) {
      resultText = "you are awesome! score: $resultScore";
    } else if (resultScore <= 12) {
      resultText = "wow! you did good score: $resultScore";
    } else {
      resultText = "you are bad dude score: $resultScore";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
