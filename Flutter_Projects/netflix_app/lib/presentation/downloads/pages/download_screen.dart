import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/colors/constants.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widget.dart';

class DownloadScreen extends StatelessWidget {
  DownloadScreen({super.key});

  final List _widgetsList = [
    SmartDownloads(),
    CenterSection(),
    ButtonSection(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: AppBarWidget(titleText: 'Downloads'),
        ),
      ),
      body: SafeArea(
        child: ListView.separated(
          padding: EdgeInsets.all(10),
          itemBuilder: (context, index) => _widgetsList[index],
          separatorBuilder: (context, index) => SizedBox(height: 40),
          itemCount: _widgetsList.length,
        ),
      ),
    );
  }
}

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.settings, color: kWhiteColor, size: 30),
        sizedBoxWidth,
        Text(
          'Smart Downloads',
          style: TextStyle(
            fontSize: 18,
            color: kWhiteColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

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

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.imageUrl,
    this.imageAngle = 0,
    required this.imageMargin,
    this.isCenterImage = true,
  });

  final String imageUrl;
  final double imageAngle;
  final EdgeInsets imageMargin;
  final bool isCenterImage;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: imageAngle * pi / 180,
      child: Container(
        margin: imageMargin,
        width: size.width * 0.35,
        height: isCenterImage ? size.width * 0.50 : size.width * 0.43,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {},
              color: buttonColorBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Setup',
                  style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        sizedBoxHight,
        MaterialButton(
          onPressed: () {},
          color: kWhiteColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                color: kBlackColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
