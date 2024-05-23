import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final int correctAnswers;

  ResultPage({required this.correctAnswers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Center(
        child: Text(
          'You got $correctAnswers correct answers!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
