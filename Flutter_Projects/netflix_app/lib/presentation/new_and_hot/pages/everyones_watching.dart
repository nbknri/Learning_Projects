import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/everyones_watching_widgets.dart';

class EveryonesWatching extends StatelessWidget {
  const EveryonesWatching({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => EveryonesWatchingWidget(),
      separatorBuilder: (context, index) => kWidth50,
      itemCount: 10,
    );
  }
}

