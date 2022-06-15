import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  void answerQuestion() {
    print("Answer chosen");
  }

  @override
  Widget build(BuildContext context) {

    String question = "Question";
    String answer = "Answer";

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Hello World")),
        body: Column(
          children: [
            Text(question),
            ElevatedButton(onPressed: answerQuestion, child: Text(answer)),
          ],
        ),
      ),
    );
  }
}
