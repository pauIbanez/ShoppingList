
import 'package:first_app/widgets/QuizSummary/QuizSummary.dart';
import 'package:flutter/material.dart';

class QuizEnd extends StatelessWidget {
  List<String> quizAnswers;
  final void Function() resetQuiz;

  QuizEnd({required this.quizAnswers, required this.resetQuiz});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          QuizSummary(quizAnswers: quizAnswers),
          SizedBox(height: 50),
          ElevatedButton(onPressed: resetQuiz, child: Text("Restart"))
        ],
      ),
    );
  }
}
