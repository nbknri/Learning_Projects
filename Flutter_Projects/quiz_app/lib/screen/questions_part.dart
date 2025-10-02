import 'package:flutter/material.dart';

class QuestionsPart extends StatelessWidget {
  const QuestionsPart({super.key, required this.currentQuestion});

  final String currentQuestion;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            currentQuestion,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
