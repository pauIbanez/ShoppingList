import 'package:first_app/widgets/Quiz/Quiz.dart';

import './data/questions.dart';
import './widgets/AnswerButton/AnswerButton.dart';
import './widgets/Question/question.dart';

import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp> {

  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      if(_questionIndex + 1 != questions.length){
        _questionIndex += 1;
      }
    });
  }


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Hello World")),
        body: Quiz(
          onAnswerPress: _answerQuestion,
          questionIndex: _questionIndex
        ), 
      ),
    );
  }
}
