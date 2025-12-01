import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/widgets/sound_button_widget.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({super.key, required this.imgUrl});

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CachedNetworkImage(
          imageUrl: imgUrl,
          imageBuilder: (context, imageProvider) => SizedBox(
            width: double.infinity,
            height: 200,
            child: Image.network(imgUrl, fit: BoxFit.cover),
          ),
          placeholder: (context, url) => SizedBox(
            width: double.infinity,
            height: 200,
            child: Center(child: CircularProgressIndicator()),
          ),
          errorWidget: (context, url, error) => SizedBox(
            width: double.infinity,
            height: 200,
            child: Center(child: Text('Image not available')),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: SoundButtonWidget(
            volumeIcon: Icons.volume_off,
            buttonAction: () {},
          ),
        ),
      ],
    );
  }
}
