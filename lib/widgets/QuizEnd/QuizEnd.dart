
import 'package:flutter/material.dart';

class QuizEnd extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("End", 
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            // textAlign: TextAlign.center
            ),
          ElevatedButton(onPressed: null, child: Text("Restart"))
        ],
      ),
    );
  }
}
