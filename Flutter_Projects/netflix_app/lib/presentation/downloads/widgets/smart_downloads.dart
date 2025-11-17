import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/colors/constants.dart';

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
