import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/widgets/cast_and_avatar_widget.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 1000),
      width: double.infinity,
      height: 100,
      color: Colors.black.withValues(alpha: 0.3),
      child: Column(
        children: [
          Row(
            children: [
              Image.network(netflixLogo, width: 60, height: 60),
              Spacer(),
              CastAndAvatarWidget(),
            ],
          ),
          kHight10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('TV Show', style: kHomeTopTitleStyle),
              Text('Movies', style: kHomeTopTitleStyle),
              Text('Category', style: kHomeTopTitleStyle),
            ],
          ),
        ],
      ),
    );
  }
}
