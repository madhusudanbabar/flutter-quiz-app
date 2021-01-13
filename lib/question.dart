import "package:flutter/material.dart";

class QuizApp extends StatelessWidget {
  final String question;
  QuizApp(this.question);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.question,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    );
  }
}
