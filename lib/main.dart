import 'package:flutter/material.dart';
import 'package:vscode_hw/answer.dart';

import 'package:vscode_hw/question.dart';

void main() => runApp(
      MaterialApp(
        title: "Questionnaire",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.pink),
        home: Scaffold(
            appBar: AppBar(
              title: Text("Questionnaire"),
            ),
            body: MyApp()),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  int currQuestion = 0;
  var questions = [
    {
      "question": "what is the capital of india?",
      "answers": ["mumbai", "delhi", "banglore", "chennai"],
      "correctAnswer": "delhi"
    },
    {
      "question": "what is the state bird of india?",
      "answers": ["peacock", "owl", "sparrow", "crow"],
      "correctAnswer": "peacock"
    },
    {
      "question": "which of the following is not UPI app?",
      "answers": ["whatsapp", "phonePe", "Google pay", "tinder"],
      "correctAnswer": "tinder"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(10),
          child: QuizApp((questions[currQuestion]["question"]) as String),
        ),
        ...(questions[currQuestion]["answers"] as List).map((opt) {
          // TODO: implement correct answer handler and score card
          return Answer(
            opt,
            getSnackBar,
          );
        }).toList()
      ],
    );
  }

  Widget getSnackBar(String option) {
    var sb = SnackBar(
      content: Text("Answer $option selected"),
    );
    setState(() {
      (currQuestion + 1) >= questions.length
          ? currQuestion = 0
          : currQuestion++;
    });
    return sb;
  }
}
