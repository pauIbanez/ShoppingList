import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}


class Question {
  var question = "";
  var answers = [];

  Question({required this.question, required this.answers});
}

class MyApp extends StatelessWidget {

  void answerQuestion() {
    print("Answer chosen");
  }


  @override
  Widget build(BuildContext context) {

    List<Question> questions = [Question(question: "Where do you live?", answers: ["Barcelona", "Reykjavik"])];


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Hello World")),
        body: Column(
          children: [
            Text(questions[0].question),
            ElevatedButton(onPressed: answerQuestion, child: Text(questions[0].answers[0])),
            ElevatedButton(onPressed: answerQuestion, child: Text(questions[0].answers[1])),
          ],
        ),
      ),
    );
  }
}
