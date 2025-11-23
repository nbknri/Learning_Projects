import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/play_button_widget.dart';
import 'package:netflix_app/presentation/widgets/icon_with_text_btn.dart';

class BigImageCard extends StatelessWidget {
  const BigImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(bigImage)),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconWithTextBtn(icon: Icons.add, title: 'My List'),
              PlayButtonWidget(),
              IconWithTextBtn(icon: Icons.info_outline_rounded, title: 'Info'),
            ],
          ),
        ),
      ],
    );
  }
}
