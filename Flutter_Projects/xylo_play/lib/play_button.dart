import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class PlayButton extends StatelessWidget {
  final Color buttonColor;
  final int musicNumber;
  

  const PlayButton({
    super.key,
    required this.buttonColor,
    required this.musicNumber,
  });

 Future<void> _playSound() async {
  
    final player = AudioPlayer();
    await player.play(AssetSource("sounds/note_$musicNumber.wav"));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onPanStart: (details) => _playSound(),
        onTap: () => _playSound(),
        child: Container(
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(5), 
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 5,
              ),
            ],
          ),
          ),
      ),
    );
  }
}
