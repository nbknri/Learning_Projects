import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/widgets/sound_button_widget.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({super.key, required this.imgUrl});

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(imgUrl, fit: BoxFit.cover),
        ),
        Positioned(bottom: 10, right: 10, child: SoundButtonWidget()),
      ],
    );
  }
}
