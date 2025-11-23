import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';

class IconWithTextBtn extends StatelessWidget {
  final IconData icon;
  final String title;
  final double iconSize;
  final double titleSize;
  final Color titleColor;

  const IconWithTextBtn({
    super.key,
    required this.icon,
    required this.title,
    this.iconSize = 30,
    this.titleSize = 18,
    this.titleColor = kWhiteColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: () {
          log('Clicked');
        },
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(icon, color: kWhiteColor, size: iconSize),
              Text(
                title,
                style: TextStyle(color: titleColor, fontSize: titleSize),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
