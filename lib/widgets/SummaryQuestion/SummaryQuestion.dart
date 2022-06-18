
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
        Container(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 18, bottom: 5),
          child: Text(questionText, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
           Container(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Text(questionAnswer, style: TextStyle(fontSize: 15)),
        ),
        
      ],
    );
  }
}
