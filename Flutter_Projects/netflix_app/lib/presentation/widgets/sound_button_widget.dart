import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';

class SoundButtonWidget extends StatelessWidget {
  final IconData volumeIcon;
  final void Function() buttonAction;
  const SoundButtonWidget({
    super.key,
    required this.volumeIcon,
    required this.buttonAction,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: Colors.black.withValues(alpha: 0.50),

      child: IconButton(
        onPressed: buttonAction,
        padding: EdgeInsets.zero,
        icon: Icon(volumeIcon, color: kWhiteColor, size: 30),
      ),
    );
  }
}
