import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/downloads/pages/download_screen.dart';
import 'package:netflix_app/presentation/fast_laugh/pages/fast_laugh_screen.dart';
import 'package:netflix_app/presentation/home/pages/home_screen.dart';
import 'package:netflix_app/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix_app/presentation/new_and_hot/pages/new_and_hot_screen.dart';
import 'package:netflix_app/presentation/search/pages/search_screen.dart';

class MainPageScreen extends StatelessWidget {
  MainPageScreen({super.key});

  final _pages = [
    HomeScreen(),
    NewAndHotScreen(),
    FastLaughScreen(),
    SearchScreen(),
    DownloadScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, child) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
