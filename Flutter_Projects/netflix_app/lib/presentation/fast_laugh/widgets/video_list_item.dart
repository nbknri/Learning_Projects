import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/widgets/icon_with_text_btn.dart';
import 'package:netflix_app/presentation/widgets/sound_button_widget.dart';

class VideoListItem extends StatelessWidget {
  const VideoListItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.accents[index % Colors.accents.length]),

        // left side
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SoundButtonWidget(),
              ),
            ],
          ),
        ),

        //right side
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(avatarImage),
                  ),
                ),
                IconWithTextBtn(icon: Icons.emoji_emotions, title: 'LOL'),
                IconWithTextBtn(icon: Icons.add, title: 'My List'),
                IconWithTextBtn(icon: Icons.share, title: 'Share'),
                IconWithTextBtn(icon: Icons.play_arrow, title: 'Play'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
