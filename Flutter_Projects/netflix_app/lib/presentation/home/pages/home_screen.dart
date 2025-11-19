import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/colors/constants.dart';
import 'package:netflix_app/presentation/widgets/title_text.dart';

final String imageUrl =
    'https://media.themoviedb.org/t/p/w440_and_h660_face/nrM2xFUfKJJEmZzd5d7kohT2G0C.jpg';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            ImageListWithTitle(title: 'Released in Past Year'),
            ImageListWithTitle(title: 'Trending Now'),
            ImageListWithTitle(
              title: 'Top 10 TV Shows in india Today',
              isTopTen: true,
            ),
            ImageListWithTitle(title: 'Tens Drama'),
            ImageListWithTitle(title: 'South Indian Cinema'),
          ],
        ),
      ),
    );
  }
}

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
              separatorBuilder: (ctx, index) => !isTopTen ? kWidth : SizedBox(),
              itemBuilder: (ctx, index) => !isTopTen
                  ? ImageCard(imageUrl: imageUrl)
                  : NumberCard(imageUrl: imageUrl, index: index),
            ),
          ),
        ),
        kHight,
      ],
    );
  }
}

class ImageCard extends StatelessWidget {
  final String imageUrl;
  const ImageCard({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class NumberCard extends StatelessWidget {
  final String imageUrl;
  final int index;
  const NumberCard({super.key, required this.imageUrl, required this.index});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(width: 40),
            Container(
              width: screenWidth * 0.30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: -4,
          bottom: -37,
          child: BorderedText(
            strokeWidth: 5.0,
            strokeColor: kWhiteColor,
            child: Text(
              '${index + 1}',
              style: TextStyle(
                fontSize: 115,
                color: kBlackColor,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
                decorationColor: kWhiteColor,
                fontFamily: numberFontFamily,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
