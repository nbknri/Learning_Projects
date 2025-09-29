import 'package:flutter/material.dart';
import 'package:xylo_play/play_button.dart';

class PlayPage extends StatelessWidget {
  const PlayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          PlayButton(
            buttonColor: Colors.red, 
            musicNumber: 1,
          ),
          PlayButton(
            buttonColor: Colors.orange,
            musicNumber: 2,
          ),
          PlayButton(
            buttonColor: Colors.yellow,
            musicNumber: 3,
          ),
          PlayButton(
            buttonColor: Colors.green, 
            musicNumber: 4,
          ),
          PlayButton(
            buttonColor: Colors.lightBlue,
            musicNumber: 5,
          ),
          PlayButton(
            buttonColor: Colors.indigo,
            musicNumber: 6,
          ),
          PlayButton(
            buttonColor: Colors.purple,
            musicNumber: 7,
          ),
        ],
      ),
    );
  }
}
