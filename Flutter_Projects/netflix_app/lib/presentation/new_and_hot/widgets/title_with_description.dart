import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';

class TitleWithDescription extends StatelessWidget {
  const TitleWithDescription({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: kHomeTopTitleStyle),
        kHight10,
        Text(description, style: TextStyle(color: kGreyColor, fontSize: 15)),
      ],
    );
  }
}
