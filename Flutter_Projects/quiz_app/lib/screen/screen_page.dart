import 'package:flutter/material.dart';
import 'package:quiz_app/data_list/question_list.dart';
import 'package:quiz_app/screen/answer_button.dart';
import 'package:quiz_app/screen/questions_part.dart';
import 'package:quiz_app/screen/score_part.dart';
import 'dart:math';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:audioplayers/audioplayers.dart';

class ScreenPage extends StatefulWidget {
  const ScreenPage({super.key});

  @override
  State<ScreenPage> createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  List<Widget> scoreKeeper = [];
  List<String> tempList = [];
  final Widget _correctAnswer = (Icon(Icons.done, color: Colors.green));
  final Widget _wrongtAnswer = (Icon(Icons.clear, color: Colors.red));

  String? _currentQuestion;
  String? _currentAnwer;
  bool _currentResult = false;
  int _numberOfQuestion = 0;
  int _numberOfWrongAnswer = 0;
  final AudioPlayer _player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _selectRandomQuestion();
  }

  void _startGame() {
    soundAlert();
    finalAlert();
    scoreKeeper = [];
    _numberOfQuestion = 0;
    _numberOfWrongAnswer = 0;
    if (tempList.length > 90) {
      tempList = [];
    }
  }

  // Select Random Questions
  void _selectRandomQuestion() {
    Random random = Random();
    String randomQuestion;

    // Avoid Duplicate Questions
    do {
      int randomIndex = random.nextInt(questionAndAnswer.keys.length);
      randomQuestion = questionAndAnswer.keys.elementAt(randomIndex);
      _currentAnwer = questionAndAnswer.values.elementAt(randomIndex);
    } while (tempList.contains(randomQuestion));

    _displayRandomQuestion(randomQuestion: randomQuestion);
  }

  // Display Questions
  void _displayRandomQuestion({required String randomQuestion}) {
    setState(() {
      if (_numberOfQuestion > 13 || _numberOfWrongAnswer > 5) {
        _startGame();
      }
      _currentQuestion = randomQuestion;
      tempList.add(randomQuestion);
    });
  }

  // Check answer
  void _checkAnswer({required String userAnswer}) {
    _currentResult = (_currentAnwer == userAnswer);
  }

  // Display answer is right or false
  void scoreUpdate(bool selectedButton) {
    _numberOfQuestion++;

    String userAnswer = selectedButton ? "true" : "false";

    _checkAnswer(userAnswer: userAnswer);

    setState(() {
      if (_currentResult) {
        scoreKeeper.add(_correctAnswer);
      } else {
        scoreKeeper.add(_wrongtAnswer);
        _numberOfWrongAnswer++;
      }
    });

    _selectRandomQuestion();
  }

  // Final Alert Section
  void finalAlert() {
    Alert(
      context: context,
      type: _numberOfWrongAnswer > 5 ? AlertType.error : AlertType.success,
      title: _numberOfWrongAnswer > 5 ? "Sorry" : "Congratultion",
      desc: _numberOfWrongAnswer > 5 ? "You lost!" : "You Won!",
      buttons: [
        DialogButton(
          onPressed: () {
            Navigator.pop(context);
            _player.stop();
          },
          width: 120,
          child: Text(
            "COOL",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ],
    ).show();
  }

  // Sound Alert
  void soundAlert() async {
    await _player.play(
      AssetSource(
        _numberOfWrongAnswer > 5 ? "sounds/lost.wav" : "sounds/win.wav",
      ),
    );
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
              QuestionsPart(
                currentQuestion: _currentQuestion ?? "Loading.....",
              ),
              AnswerButton(
                buttonColor: Colors.green,
                buttonLabel: "ശരി",
                buttonAction: scoreUpdate,
              ),
              SizedBox(height: 15),
              AnswerButton(
                buttonColor: Colors.red,
                buttonLabel: "തെറ്റ്",
                buttonAction: scoreUpdate,
              ),
              SizedBox(height: 5),
              ScorePart(scoreKeeper: scoreKeeper),
            ],
          ),
        ),
      ),
    );
  }
}
