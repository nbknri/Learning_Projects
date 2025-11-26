import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_collection),
              label: 'New & Hot',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_emotions),
              label: 'Fast Laughs',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
              icon: Icon(Icons.arrow_circle_down),
              label: 'Download',
            ),
          ],
          currentIndex: newIndex,
          selectedItemColor: kWhiteColor,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: const IconThemeData(color: kWhiteColor),
          unselectedIconTheme: const IconThemeData(color: kGreyColor),
          backgroundColor: backGroundColor,
          type: BottomNavigationBarType.fixed,
          onTap: (index) => indexChangeNotifier.value = index,
        );
      },
    );
  }
}
