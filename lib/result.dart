import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  const Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    if (resultScore <= 8) {
      return 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      return 'Pretty likeable!';
    } else if (resultScore <= 16) {
      return 'You are ... strange?!';
    } else {
      return 'You are so bad!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20), // Adding some space between text and button
          ElevatedButton(
            onPressed: resetHandler as void Function()?,
            child: Text('Restart Quiz'),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
