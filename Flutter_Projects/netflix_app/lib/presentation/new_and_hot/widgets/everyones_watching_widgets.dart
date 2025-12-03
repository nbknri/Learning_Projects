import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/title_with_description.dart';
import 'package:netflix_app/presentation/widgets/icon_with_text_btn.dart';
import 'package:netflix_app/presentation/widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  final String imgUrl;
  final String programName;
  final String programOriginalName;
  final String programDescription;

  const EveryonesWatchingWidget({
    super.key,
    required this.imgUrl,
    required this.programName,
    required this.programOriginalName,
    required this.programDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWithDescription(
          title: programName,
          description: programDescription,
        ),
        kHight30,
        VideoWidget(imgUrl: imgUrl),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                child: Text(
                  programOriginalName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: kWhiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            // Icon section
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 15),
              child: Row(
                children: [
                  IconWithTextBtn(
                    icon: Icons.send,
                    title: 'Share',
                    iconSize: 30,
                    titleSize: 14,
                    titleColor: kGreyColor,
                    buttonAction: () {},
                  ),
                  kWidth20,
                  IconWithTextBtn(
                    icon: Icons.add,
                    title: 'My List',
                    iconSize: 30,
                    titleSize: 14,
                    titleColor: kGreyColor,
                    buttonAction: () {},
                  ),
                  kWidth20,
                  IconWithTextBtn(
                    icon: Icons.play_arrow,
                    title: 'Play',
                    iconSize: 30,
                    titleSize: 14,
                    titleColor: kGreyColor,
                    buttonAction: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
