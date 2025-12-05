import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';

class ImageCard extends StatelessWidget {
  final String imageUrl;
  const ImageCard({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return CachedNetworkImage(
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
        child: const Center(child: CircularProgressIndicator(strokeWidth: 2.0)),
      ),
      errorWidget: (context, url, error) => Container(
        width: screenWidth * 0.30,
        decoration: errorBoxDecoration,
        child: Center(child: Text('No image!')),
      ),
    );
  }
}
