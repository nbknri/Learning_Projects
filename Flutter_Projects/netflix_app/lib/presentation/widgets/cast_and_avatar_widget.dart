import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';

class CastAndAvatarWidget extends StatelessWidget {
  const CastAndAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.cast, size: 35)),
        SizedBox(width: 20),
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: AssetImage('assets/avatar/avatar.jpg'),
            ),
          ),
        ),
        kWidth10,
      ],
    );
  }
}
