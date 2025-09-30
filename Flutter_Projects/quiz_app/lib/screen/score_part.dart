import 'package:flutter/material.dart';
import 'package:quiz_app/data_list/score_list.dart';

class ScorePart extends StatefulWidget {
  const ScorePart({super.key});

  @override
  State<ScorePart> createState() => _ScorePartState();
}

class _ScorePartState extends State<ScorePart> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: scoreKeeper,
        ),
        );
  }
}