import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/colors/constants.dart';
import 'package:netflix_app/presentation/downloads/widgets/downloads_image_widget.dart';

class CenterSection extends StatelessWidget {
  CenterSection({super.key});

  final List imageList = [
    'https://media.themoviedb.org/t/p/w440_and_h660_face/fGodXWqJkkkbSebPIlxLSygV8GY.jpg',
    'https://media.themoviedb.org/t/p/w440_and_h660_face/np7ZzU2rmUqqIPQ4HtfcC8JLOvS.jpg',
    'https://media.themoviedb.org/t/p/w440_and_h660_face/kGLgaDrYWmTAdRFzGP5pBquRnhO.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        SizedBox(height: 20),
        Text(
          'We\'ll download a personalised selection of\nmovies and shows for you, so there\'s\nalways something to watch on your\ndevice',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: kGreyColor),
        ),
        sizedBoxHight,
        SizedBox(
          width: size.width,
          height: size.width * 0.75,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: size.width * 0.33,
                  backgroundColor: kGreyColor.shade800,
                ),
              ),
              DownloadsImageWidget(
                imageUrl: imageList[2],
                imageAngle: 20,
                imageMargin: EdgeInsets.only(left: 160, bottom: 20),
                isCenterImage: false,
              ),
              DownloadsImageWidget(
                imageUrl: imageList[0],
                imageAngle: -20,
                imageMargin: EdgeInsets.only(right: 160, bottom: 20),
                isCenterImage: false,
              ),
              DownloadsImageWidget(
                imageUrl: imageList[1],
                imageAngle: 0,
                imageMargin: EdgeInsets.only(top: 24),
              ),
            ],
          ),
        ),
        SizedBox(height: 25),
      ],
    );
  }
}
