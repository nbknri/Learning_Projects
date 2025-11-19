import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/home/widgets/image_list_with_title.dart';




class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            ImageListWithTitle(title: 'Released in Past Year'),
            ImageListWithTitle(title: 'Trending Now'),
            ImageListWithTitle(
              title: 'Top 10 TV Shows in india Today',
              isTopTen: true,
            ),
            ImageListWithTitle(title: 'Tens Drama'),
            ImageListWithTitle(title: 'South Indian Cinema'),
          ],
        ),
      ),
    );
  }
}

