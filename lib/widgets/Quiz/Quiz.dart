


import 'package:first_app/data/questions.dart';
import 'package:first_app/widgets/QuizEnd/QuizEnd.dart';
import 'package:first_app/widgets/QuizStage/QuizStage.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}
class _QuizState extends State<Quiz> {

  int _questionIndex = 0;
  bool _quizFinished = false;

  void _answerQuestion() {
    setState(() {
      if(_questionIndex + 1 != questions.length){
        _questionIndex += 1;
      } else {
        _quizFinished = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    Widget widgetToRender = !_quizFinished ? 
      QuizStage(
        onAnswerPress: _answerQuestion,
        questionIndex: _questionIndex
      ) 
      :
      QuizEnd();

    return  widgetToRender;
  }
}
