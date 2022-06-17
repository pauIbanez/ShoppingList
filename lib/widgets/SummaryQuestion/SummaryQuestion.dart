
import 'package:flutter/material.dart';

class QuizSummaryQuestion extends StatelessWidget {
  final String questionText;
  final String questionAnswer;


  QuizSummaryQuestion({required this.questionText, required this.questionAnswer});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(questionText, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text(questionAnswer, style: TextStyle(fontSize: 15)),
      ],
    );
  }
}
