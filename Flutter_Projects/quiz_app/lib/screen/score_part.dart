import 'package:flutter/material.dart';

class ScorePart extends StatelessWidget {
  const ScorePart({super.key, required this.scoreKeeper});

  final List<Widget> scoreKeeper;

  @override
  Widget build(BuildContext context) {
    return SizedBox(child: Row(children: scoreKeeper));
  }
}
