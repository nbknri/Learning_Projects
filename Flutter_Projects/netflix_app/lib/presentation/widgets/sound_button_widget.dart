import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';

class SoundButtonWidget extends StatelessWidget {
  const SoundButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.black.withValues(alpha: 0.50),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.volume_mute_rounded, 
                      color: kWhiteColor, 
                      size: 30,
                      ),
                  ),
                );
  }
}