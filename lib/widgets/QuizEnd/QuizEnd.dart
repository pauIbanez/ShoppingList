
import 'package:first_app/widgets/QuizSummary/QuizSummary.dart';
import 'package:flutter/material.dart';

class QuizEnd extends StatelessWidget {
  List<String> quizAnswers;

  QuizEnd({required this.quizAnswers});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          QuizSummary(quizAnswers: quizAnswers),
          ElevatedButton(onPressed: null, child: Text("Restart"))
        ],
      ),
    );
  }
}
