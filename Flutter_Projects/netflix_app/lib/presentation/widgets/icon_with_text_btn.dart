import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';

class IconWithTextBtn extends StatelessWidget {
  final IconData icon;
  final String title;
  final double iconSize;
  final Color iconColor;
  final double titleSize;
  final Color titleColor;
  final void Function() buttonAction;

  const IconWithTextBtn({
    super.key,
    required this.icon,
    required this.title,
    this.iconSize = 30,
    this.iconColor = kWhiteColor,
    this.titleSize = 16,
    this.titleColor = kWhiteColor,
    required this.buttonAction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        child: GestureDetector(
          onTap: buttonAction,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(icon, color: iconColor, size: iconSize),
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
