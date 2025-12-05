import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/play_button_widget.dart';
import 'package:netflix_app/presentation/widgets/icon_with_text_btn.dart';

class BigImageCard extends StatelessWidget {
  final String imgUrl;
  const BigImageCard({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CachedNetworkImage(
          imageUrl: imgUrl,
          imageBuilder: (context, imageProvider) => Container(
            width: double.infinity,
            height: 600,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(imgUrl)),
            ),
          ),
          placeholder: (context, url) => Container(
            width: double.infinity,
            height: 600,
            decoration: errorBoxDecoration,
            child: const Center(
              child: CircularProgressIndicator(strokeWidth: 2.0),
            ),
          ),
          errorWidget: (context, url, error) => Container(
            width: double.infinity,
            height: 600,
            decoration: errorBoxDecoration,
            child: Center(child: Text('No image!')),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconWithTextBtn(
                icon: Icons.add,
                title: 'My List',
                buttonAction: () {},
              ),
              PlayButtonWidget(),
              IconWithTextBtn(
                icon: Icons.info_outline_rounded,
                title: 'Info',
                buttonAction: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
