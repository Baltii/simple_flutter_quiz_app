// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        SizedBox(height: 20), // Add space between question and answers
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Column(
            children: [
              Answer(
                () => answerQuestion(answer['score'] as int),
                answer['text'] as String,
              ),
              SizedBox(height: 5), // Add space between answers
            ],
          );
        }).toList(),
      ],
    );
  }
}
