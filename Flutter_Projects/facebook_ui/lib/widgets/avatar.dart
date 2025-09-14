import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool statusIndicator;
  final bool displayBorder;
  final double imageSize;

  const Avatar({
    super.key,
    required this.displayImage,
    this.statusIndicator = false,
    this.displayBorder = false,
    this.imageSize = 50,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: displayBorder
                ? Border.all(color: Colors.blueAccent, width: 3)
                : Border(),
            shape: BoxShape.circle,
          ),
          padding: EdgeInsets.only(left: 4, right: 4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(displayImage, width: imageSize, height: imageSize,
            ),
          ),
        ),

        // Statu Indicator section
        statusIndicator
            ? Positioned(
                right: 0,
                bottom: 1.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.green,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  width: 15,
                  height: 15,
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
