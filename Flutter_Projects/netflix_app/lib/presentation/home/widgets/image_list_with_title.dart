import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/image_card.dart';
import 'package:netflix_app/presentation/home/widgets/number_card.dart';
import 'package:netflix_app/presentation/widgets/title_text.dart';

class ImageListWithTitle extends StatelessWidget {
  final bool isTopTen;
  final String title;
  const ImageListWithTitle({
    super.key,
    required this.title,
    this.isTopTen = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: title),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: LimitedBox(
            maxHeight: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              separatorBuilder: (ctx, index) => !isTopTen ? kWidth10 : SizedBox(),
              itemBuilder: (ctx, index) => !isTopTen
                  ? ImageCard(imageUrl: imageUrl)
                  : NumberCard(imageUrl: imageUrl, index: index),
            ),
          ),
        ),
        kHight10,
      ],
    );
  }
}
