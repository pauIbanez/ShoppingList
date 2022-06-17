import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}


class Question {
  String question = "";
  List<String> answers = [];

  Question({required this.question, required this.answers});
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return MyAppState();
  }

}

class MyAppState extends State<MyApp> {

   
  List<Question> questions = [Question(question: "Where do you live?", answers: ["Barcelona", "Reykjavik"]), Question(question: "What pet do you have?", answers: ["Dog", "Cat", "Whale"])];
  int questionIndex = 0;

  void answerQuestion() {
    setState(() {
      if(questionIndex + 1 != questions.length){
        questionIndex += 1;
      }
    });
  }


  @override
  Widget build(BuildContext context) {


    var answerButtons = questions[questionIndex].answers.map((answer) => 
       ElevatedButton(onPressed: answerQuestion, child: Text(answer)),
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Hello World")),
        body: Column(
          children: [
            Text(questions[questionIndex].question),
            ...answerButtons
          ],
        ),
      ),
    );
  }
}
