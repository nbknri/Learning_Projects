import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/home/home_bloc.dart';
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
          child: RefreshIndicator(
            onRefresh: () async =>
                context.read<HomeBloc>().add(GetHomeScreenData()),
            child: ValueListenableBuilder(
              valueListenable: scrollNotifier,
              builder: (context, value, child) {
                return Stack(
                  children: [
                    BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                        final filterBigImageUrls = state.bigImageList
                            .where((e) => e.posterPath != null)
                            .map((e) => '$imageAppendUrl${e.posterPath}')
                            .toList();
                        final bigImageUrl = filterBigImageUrls.isNotEmpty
                            ? filterBigImageUrls.first
                            : '';

                        final pastYear = state.pastYearMovieList
                            .where((e) => e.posterPath != null)
                            .map((m) => '$imageAppendUrl${m.posterPath}')
                            .toList();
                        final trending = state.trendingMovieList
                            .where((e) => e.posterPath != null)
                            .map((m) => '$imageAppendUrl${m.posterPath}')
                            .toList();
                        final tensDrama = state.tensDramaMovieList
                            .where((e) => e.posterPath != null)
                            .map((m) => '$imageAppendUrl${m.posterPath}')
                            .toList();
                        final southIndian = state.southIndianMovieList
                            .where((e) => e.posterPath != null)
                            .map((m) => '$imageAppendUrl${m.posterPath}')
                            .toList();
                        final topTen = state.topTenTvList
                            .where((e) => e.posterPath != null)
                            .map((m) => '$imageAppendUrl${m.posterPath}')
                            .toList();

                        return state.isLoading
                            ? const Center(
                                child: CircularProgressIndicator(
                                  strokeWidth: 2.0,
                                ),
                              )
                            : state.isError
                            ? const Center(child: Text('Error fetching data'))
                            : state.bigImageList.isEmpty
                            ? const Center(child: Text('List is empty'))
                            : ListView(
                                children: [
                                  BigImageCard(imgUrl: bigImageUrl),
                                  kHight10,
                                  ImageListWithTitle(
                                    title: 'Released in Past Year',
                                    posterList: pastYear.length >= 10
                                        ? pastYear.sublist(0, 10)
                                        : pastYear,
                                  ),
                                  ImageListWithTitle(
                                    title: 'Trending Now',
                                    posterList: trending.length >= 10
                                        ? trending.sublist(0, 10)
                                        : trending,
                                  ),
                                  if (topTen.length >= 10)
                                    ImageListWithTitle(
                                      title: 'Top 10 TV Shows in india Today',
                                      isTopTen: true,
                                      posterList: pastYear,
                                      topTenPosterList: topTen.length >= 10
                                          ? topTen.sublist(0, 10)
                                          : topTen,
                                    ),
                                  ImageListWithTitle(
                                    title: 'Tens Drama',
                                    posterList: tensDrama.length >= 10
                                        ? tensDrama.sublist(0, 10)
                                        : tensDrama,
                                  ),
                                  ImageListWithTitle(
                                    title: 'South Indian Cinema',
                                    posterList: southIndian.length >= 10
                                        ? southIndian.sublist(0, 10)
                                        : southIndian,
                                  ),
                                ],
                              );
                      },
                    ),
                    scrollNotifier.value ? HomePageHeader() : SizedBox(),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
