import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String options;
  final Function handler;
  Answer(this.options, this.handler);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.pink,
        onPressed: () =>
            ScaffoldMessenger.of(context).showSnackBar(handler(this.options)),
        child: Text(
          options,
          style: TextStyle(color: Colors.white),
        ),
        elevation: 10,
      ),
    );
  }
}
