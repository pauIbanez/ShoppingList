import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final void Function() onPress;
  final String text;

  AnswerButton({required this.onPress, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      width: double.infinity,
      child: ElevatedButton(onPressed: onPress,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 15,
          ),
        )
      )
    );
  }
}
