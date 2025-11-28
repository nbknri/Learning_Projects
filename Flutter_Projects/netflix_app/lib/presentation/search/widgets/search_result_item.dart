import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';

class SearchResultItem extends StatelessWidget {
  final String imgUrl;
  const SearchResultItem({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return imgUrl == '${imageAppendUrl}null'
        ? Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: kGreyColor.shade800,
            ),
            child: Center(child: Text('No image')),
          )
        : Container(
      decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imgUrl),
              ),
            ),
    );
  }
}
