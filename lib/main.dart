import './question/question.dart';
import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}


class QuestionBuilder {
  String question;
  List<String> answers;

  QuestionBuilder({required this.question, required this.answers});
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp> {

   
  List<QuestionBuilder> questions = [QuestionBuilder(question: "Where do you live?", answers: ["Barcelona", "Reykjavik"]), QuestionBuilder(question: "What pet do you have?", answers: ["Dog", "Cat", "Whale"])];
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


    var answerButtons = questions[_questionIndex].answers.map((answer) => 
       ElevatedButton(onPressed: _answerQuestion, child: Text(answer)),
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Hello World")),
        body: Column(
          children: [
            Question(questionText: questions[_questionIndex].question),
            ...answerButtons
          ],
        ),
      ),
    );
  }
}
