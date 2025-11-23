import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';

class PlayButtonWidget extends StatelessWidget {
  const PlayButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: TextButton.icon(
        onPressed: () {},
        label: Text('Play', style: TextStyle(fontSize: 18)),
        icon: Icon(Icons.play_arrow, size: 35),
        style: TextButton.styleFrom(
          backgroundColor: kWhiteColor,
          foregroundColor: kBlackColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(2),
          ),
          padding: EdgeInsets.only(right: 15, left: 5),
        ),
      ),
    );
  }
}
