
import 'dart:ffi';

import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final void Function() onPress;
  final String text;

  AnswerButton({required this.onPress, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPress, child: Text(text));
  }
}
