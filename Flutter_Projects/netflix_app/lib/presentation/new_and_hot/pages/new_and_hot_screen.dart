import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/new_and_hot/pages/coming_soon.dart';
import 'package:netflix_app/presentation/new_and_hot/pages/everyones_watching.dart';
import 'package:netflix_app/presentation/widgets/cast_and_avatar_widget.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            elevation: 0,
            title: Text('New & Hot', style: appBarTitleStyle),
            actions: [CastAndAvatarWidget()],
            bottom: TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              padding: EdgeInsets.only(left: 8),
              indicatorWeight: 0,
              dividerColor: Colors.transparent,
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              labelColor: kBlackColor,
              indicatorColor: kWhiteColor,
              indicator: BoxDecoration(
                color: kWhiteColor,
                borderRadius: kBRadius30,
              ),
              tabs: [
                Tab(text: '🍿 Coming Soon'),
                Tab(text: "👀 Everyone's watching"),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: TabBarView(children: [ComingSoon(), EveryonesWatching()]),
        ),
      ),
    );
  }
}
