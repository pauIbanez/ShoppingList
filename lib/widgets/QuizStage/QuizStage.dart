import 'package:first_app/data/questions.dart';
import 'package:first_app/widgets/AnswerButton/AnswerButton.dart';
import 'package:first_app/widgets/Question/question.dart';
import 'package:flutter/material.dart';

class QuizStage extends StatelessWidget {
  final void Function() onAnswerPress;
  final int questionIndex;

  QuizStage({required this.onAnswerPress, required this.questionIndex});

  @override
  Widget build(BuildContext context) {
        List<AnswerButton> answerButtons = (questions[questionIndex]["answers"] as List<String>).map((answer) => 
        AnswerButton(onPress: onAnswerPress, text: answer)
    ).toList();
    
  return Column(
      children: [
        Question(questionText: (questions[questionIndex]["question"] as String)),
        ...answerButtons
      ],
    );
  }
}
