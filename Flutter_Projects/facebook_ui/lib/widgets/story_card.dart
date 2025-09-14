import 'dart:developer';

import 'package:facebook_ui/widgets/avatar.dart';
import 'package:facebook_ui/widgets/circlular_button.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avathar;
  final bool createStoryStatus;

  const StoryCard({
    super.key,
    required this.labelText,
    required this.story,
    required this.avathar,
    this.createStoryStatus = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: createStoryStatus
                ? CircluarButton(
                    buttonIcon: Icons.add,
                    iconColor: Colors.blue,
                    buttonAction: () {
                      log('Add to story!');
                    },
                  )
                : Avatar(
                  displayImage: avathar, 
                  displayBorder: true,
                  imageSize: 40,
                  ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              labelText != '' ? labelText : "N/A",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
