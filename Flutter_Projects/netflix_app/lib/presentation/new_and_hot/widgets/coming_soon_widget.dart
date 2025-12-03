import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/title_with_description.dart';
import 'package:netflix_app/presentation/widgets/icon_with_text_btn.dart';
import 'package:netflix_app/presentation/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  final String releaseDate;
  final String movieTitle;
  final String imgUrl;
  final String movieDescription;
  final String originalTitle;
  final String movieMonth;
  final String movieDate;

  const ComingSoonWidget({
    super.key,
    required this.releaseDate,
    required this.movieTitle,
    required this.imgUrl,
    required this.movieDescription,
    required this.originalTitle, 
    required this.movieMonth,
    required this.movieDate,
  });

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
                Text(movieMonth, style: TextStyle(color: kGreyColor)),
                Text(
                  movieDate,
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
                  VideoWidget(imgUrl: imgUrl),
                  // Title section
                  Row(
                    children: [
                      SizedBox(
                        width: size.width - 199,
                        child: Text(
                          originalTitle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: kWhiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
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
                              buttonAction: () {},
                            ),
                            kWidth20,
                            IconWithTextBtn(
                              icon: Icons.info_outline_rounded,
                              title: 'Info',
                              iconSize: 25,
                              titleSize: 12,
                              titleColor: kGreyColor,
                              buttonAction: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Coming on $releaseDate',
                    style: TextStyle(fontSize: 16),
                  ),
                  kHight10,
                  TitleWithDescription(
                    title: movieTitle,
                    description: movieDescription,
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
