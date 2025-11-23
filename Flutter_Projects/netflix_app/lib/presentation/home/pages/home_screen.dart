import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/big_image_card.dart';
import 'package:netflix_app/presentation/home/widgets/home_page_header.dart';
import 'package:netflix_app/presentation/home/widgets/image_list_with_title.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: ValueListenableBuilder(
            valueListenable: scrollNotifier,
            builder: (context, value, child) {
              return Stack(
                children: [
                  ListView(
                    children: [
                      BigImageCard(),
                      kHight10,
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
                  scrollNotifier.value ? HomePageHeader() : SizedBox(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

