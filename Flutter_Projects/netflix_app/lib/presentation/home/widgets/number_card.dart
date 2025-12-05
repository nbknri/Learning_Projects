import 'package:bordered_text/bordered_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';

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
            CachedNetworkImage(
              imageUrl: imageUrl,
              imageBuilder: (context, imageProvider) => Container(
                width: screenWidth * 0.30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              placeholder: (context, url) => Container(
                width: screenWidth * 0.30,
                decoration: errorBoxDecoration,
                child: const Center(
                  child: CircularProgressIndicator(strokeWidth: 2.0),
                ),
              ),
              errorWidget: (context, url, error) => Container(
                width: screenWidth * 0.30,
                decoration: errorBoxDecoration,
                child: Center(child: Text('No image!')),
              ),
            ),
          ],
        ),
        Positioned(
          left: 2,
          bottom: -38,
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
                letterSpacing: -15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
