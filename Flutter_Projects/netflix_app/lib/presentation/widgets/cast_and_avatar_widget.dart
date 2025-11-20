import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/constants.dart';

class CastAndAvatarWidget extends StatelessWidget {
  const CastAndAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.cast, size: 35)),
        SizedBox(width: 20),
        Container(height: 27, width: 27, color: Colors.blue),
        kWidth,
      ],
    );
  }
}