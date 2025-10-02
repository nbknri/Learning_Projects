import 'package:flutter/material.dart';

class ScorePart extends StatefulWidget {
  const ScorePart({super.key, required this.scoreKeeper});

  final List<Widget> scoreKeeper;

  @override
  State<ScorePart> createState() => _ScorePartState();
}

class _ScorePartState extends State<ScorePart> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(child: Row(children: widget.scoreKeeper));
  }
}
