import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';

class IconWithTextBtn extends StatelessWidget {
  final IconData icon;
  final String title;

  const IconWithTextBtn({super.key, required this.icon, required this.title});

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
              Icon(icon, color: kWhiteColor, size: 30),
              Text(title, style: TextStyle(color: kWhiteColor)),
            ],
          ),
        ),
      ),
    );
  }
}
