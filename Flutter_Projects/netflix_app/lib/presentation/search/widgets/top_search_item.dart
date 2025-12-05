import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';

class TopSearchItemTile extends StatelessWidget {
  final String imgUrl;
  final String title;

  const TopSearchItemTile({
    super.key,
    required this.imgUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        CachedNetworkImage(
          imageUrl: imgUrl,
          imageBuilder: (context, imageProvider) => Container(
            width: screenWidth * 0.35,
            height: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              image: DecorationImage(
                image: NetworkImage(imgUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          placeholder: (context, url) => Container(
            width: screenWidth * 0.35,
            height: 75,
            decoration: errorBoxDecoration,
            child: Center(child: CircularProgressIndicator(strokeWidth: 2.0)),
          ),
          errorWidget: (context, url, error) => Container(
            width: screenWidth * 0.35,
            height: 75,
            decoration: errorBoxDecoration,
            child: const Center(child: Text('No image!')),
          ),
        ),
        kWidth10,
        Expanded(
          child: Text(
            title,
            softWrap: true,
            style: TextStyle(
              color: kWhiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.play_circle_outline_rounded,
            size: 45,
            color: kWhiteColor,
          ),
        ),
      ],
    );
  }
}
