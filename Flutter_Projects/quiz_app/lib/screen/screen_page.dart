import 'package:flutter/material.dart';
import 'package:quiz_app/data_list/score_list.dart';
import 'package:quiz_app/screen/answer_button.dart';
import 'package:quiz_app/screen/questions_part.dart';
import 'package:quiz_app/screen/score_part.dart';

class ScreenPage extends StatefulWidget {
  const ScreenPage({super.key});

  @override
  State<ScreenPage> createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  bool _correctAnswer = false;

  void scoreUpdate() {
    setState(() {
      if (_correctAnswer) {
        scoreKeeper.add(Icon(Icons.done, color: Colors.green));
       } else {
        scoreKeeper.add(Icon(Icons.clear, color: Colors.red));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              QuestionsPart(),
              AnswerButton(
                buttonColor: Colors.green,
                buttonLabel: "ശരി",
                buttonClicked: scoreUpdate,
              ),
              SizedBox(height: 15),
              AnswerButton(
                buttonColor: Colors.red,
                buttonLabel: "തെറ്റ്",
                buttonClicked: scoreUpdate,
              ),
              SizedBox(height: 5),
              ScorePart(),
            ],
          ),
        ),
      ),
    );
  }
}
