import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/widgets/cast_and_avatar_widget.dart';

class AppBarWidget extends StatelessWidget {
  final String titleText;
  const AppBarWidget({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          titleText,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        CastAndAvatarWidget(),
      ],
    );
  }
}
