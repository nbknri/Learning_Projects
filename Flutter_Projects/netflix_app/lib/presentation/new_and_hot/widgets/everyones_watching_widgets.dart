import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/title_with_description.dart';
import 'package:netflix_app/presentation/widgets/icon_with_text_btn.dart';
import 'package:netflix_app/presentation/widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWithDescription(
          title: 'Friends',
          description:
              'Landing the lead in the school musical is a dream come trust for Jodi, until the pressure sends her confidence - and her relationship - into a tailspin.',
        ),
        kHight30,
        VideoWidget(imgUrl: evnImage),
        Row(
          children: [
            SizedBox(
              child: Text(
                'TALLGIRL 2',
                style: TextStyle(
                  color: kWhiteColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Spacer(),
            // Icon section
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 15),
              child: Row(
                children: [
                  IconWithTextBtn(
                    icon: Icons.send,
                    title: 'Share',
                    iconSize: 30,
                    titleSize: 16,
                    titleColor: kGreyColor,
                  ),
                  kWidth20,
                  IconWithTextBtn(
                    icon: Icons.add,
                    title: 'My List',
                    iconSize: 30,
                    titleSize: 16,
                    titleColor: kGreyColor,
                  ),
                  kWidth20,
                  IconWithTextBtn(
                    icon: Icons.play_arrow,
                    title: 'Play',
                    iconSize: 30,
                    titleSize: 16,
                    titleColor: kGreyColor,
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
