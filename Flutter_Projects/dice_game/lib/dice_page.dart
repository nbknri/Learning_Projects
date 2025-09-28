import 'dart:math';
import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  String diceSelection = "assets/images/dice${Random().nextInt(6) + 1}.png";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 150,
            width: 150,
            child: TextButton(
              onPressed: () async {

                final player = AudioPlayer();
                await player.play(AssetSource('sounds/dice_sound.wav'));

                setState(() {
                  diceSelection = "assets/images/dice_rotate.gif";
                  Future.delayed(Duration(seconds: 1), () {setState(() {
                    diceSelection = "assets/images/dice${Random().nextInt(6) + 1}.png";
                  });
                    
                  });
                });
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent.shade700,
                shadowColor: Colors.grey,
              ),
              child: Image.asset(
                diceSelection,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
