
import 'package:flutter/material.dart';

class QuizSummaryQuestion extends StatelessWidget {
  final String questionText;
  final String questionAnswer;


  QuizSummaryQuestion({required this.questionText, required this.questionAnswer});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(questionText),
        Text(questionAnswer),
      ],
    );
  }
}
