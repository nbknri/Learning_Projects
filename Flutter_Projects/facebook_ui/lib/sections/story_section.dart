import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/story_card.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: null,
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to Story",
            story: tovino,
            avathar: tovino,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Dupattawaal",
            story: dupattawali,
            avathar: fahad,
          ),
          StoryCard(
            labelText: "Lokha Location", 
            story: groupphoto, 
            avathar: dulquer
          ),
          StoryCard(
            labelText: "Happy Birthday", 
            story: happybirthdayMammotty, 
            avathar: asifali,
          ),
          StoryCard(
            labelText: "Elephant", 
            story: elephant, 
            avathar: jayaram,
          ),
          StoryCard(
            labelText: "Hrithaya Poorvam", 
            story: hrithayapoorvam, 
            avathar: mohanlal,
            ),
        ],
      ),
    );
  }
}
