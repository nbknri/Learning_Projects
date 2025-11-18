import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presentation/fast_laugh/widgets/video_icon_widget.dart';

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
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.black.withValues(alpha: 0.50),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.volume_mute_rounded, 
                      color: kWhiteColor, 
                      size: 30,
                      ),
                  ),
                ),
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
                    backgroundImage: NetworkImage(
                      'https://media.themoviedb.org/t/p/w276_and_h350_face/dW5U5yrIIPmMjRThR9KT2xH6nTz.jpg',
                      ),
                  ),
                ),
                VideoIconWidget(
                  icon: Icons.emoji_emotions,
                  title: 'LOL',
                ),
                VideoIconWidget(icon: Icons.add, title: 'My List'),
                VideoIconWidget(icon: Icons.share, title: 'Share'),
                VideoIconWidget(icon: Icons.play_arrow, title: 'Play'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
