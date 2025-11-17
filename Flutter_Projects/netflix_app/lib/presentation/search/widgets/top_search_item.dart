import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/colors/constants.dart';

final String imageUrl =
    'https://media.themoviedb.org/t/p/w1000_and_h563_face/mcmTVTMCiU5hcWpau53ISftjaqc.jpg';

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        sizedBoxWidth,
        Expanded(
          child: Text(
            'Title Name',
            style: TextStyle(
              color: kWhiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.play_circle_outline_rounded,
            size: 45,
            color: kWhiteColor,
          ),
        ),
      ],
    );
  }
}
