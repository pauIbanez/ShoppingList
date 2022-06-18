
import 'package:first_app/data/questions.dart';
import 'package:first_app/widgets/SummaryQuestion/SummaryQuestion.dart';
import 'package:flutter/material.dart';

class QuizSummary extends StatelessWidget {
  List<String> quizAnswers = [];

  QuizSummary({required this. quizAnswers});

  @override
  Widget build(BuildContext context) {

  int currentQuestion = 0;

  List<QuizSummaryQuestion> quizSummaryQuestions = questions.map((question) {

    QuizSummaryQuestion quizSummaryQuestion = QuizSummaryQuestion(questionText: (question["question"] as String), questionAnswer: quizAnswers[currentQuestion]);

    currentQuestion += 1;

    return quizSummaryQuestion;
  }).toList();

  print(quizAnswers);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...quizSummaryQuestions
      ],
    );
  } 
}
