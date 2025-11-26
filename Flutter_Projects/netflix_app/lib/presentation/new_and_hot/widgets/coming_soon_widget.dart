import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/title_with_description.dart';
import 'package:netflix_app/presentation/widgets/icon_with_text_btn.dart';
import 'package:netflix_app/presentation/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SizedBox(
            width: 40,
            child: Column(
              children: [
                Text('FEB', style: TextStyle(color: kGreyColor)),
                Text(
                  '11',
                  style: TextStyle(
                    color: kWhiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: numberFontFamily,
                  ),
                ),
              ],
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(
              width: size.width - 56,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //image section
                  VideoWidget(imgUrl: cmsImage),
                  // Title section
                  Row(
                    children: [
                      SizedBox(
                        width: size.width - 199,
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
                              icon: Icons.notifications_none,
                              title: 'Remind Me',
                              iconSize: 25,
                              titleSize: 12,
                              titleColor: kGreyColor,
                            ),
                            kWidth20,
                            IconWithTextBtn(
                              icon: Icons.info_outline_rounded,
                              title: 'Info',
                              iconSize: 25,
                              titleSize: 12,
                              titleColor: kGreyColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text('Coming on Friday', style: TextStyle(fontSize: 16)),
                  kHight10,
                  TitleWithDescription(
                    title: 'Tall Girl 2',
                    description:
                        'Landing the lead in the school musical is a dream come trust for Jodi, until the pressure sends her confidence - and her relationship - into a tailspin.',
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
