import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';

class SearchResultItem extends StatelessWidget {
  final String imgUrl;
  const SearchResultItem({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imgUrl,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imgUrl),
          ),
        ),
      ),
      placeholder: (context, url) => Container(
        decoration: errorBoxDecoration,
        child: const Center(
          child: CircularProgressIndicator(strokeWidth: 2.0),
        ),
      ),
      errorWidget: (context, url, error) => Container(
        decoration: errorBoxDecoration,
        child: Center(child: Text('No image!')),
      ),
    );
  }
}
