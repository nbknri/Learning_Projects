import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';

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
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        imageBuilder: (context, imageProvider) => Container(
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
        placeholder: (context, url) => Container(
          width: size.width * 0.35,
          height: isCenterImage ? size.width * 0.50 : size.width * 0.43,
          decoration: errorBoxDecoration,
          child: const Center(
            child: CircularProgressIndicator(color: kGreyColor),
          ),
        ),
        errorWidget: (context, url, error) => Container(
          width: size.width * 0.35,
          height: isCenterImage ? size.width * 0.50 : size.width * 0.43,
          decoration: errorBoxDecoration,
          child: Center(child: Text('No image!')),
        ),
      ),
    );
  }
}
