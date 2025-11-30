import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/fast_laugh/widgets/video_list_item.dart';

class FastLaughScreen extends StatelessWidget {
  const FastLaughScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastLaughBloc>(context).add(Initialize());
    });

    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FastLaughBloc, FastLaughState>(
          builder: (context, state) {
            final imgPath = state.videoList;
            return state.isLoading
                ? Center(child: CircularProgressIndicator())
                : state.isError
                ? Center(child: Text('Error while getting data'))
                : state.videoList.isEmpty
                ? Center(child: Text('Video List is Empty'))
                : PageView(
                    scrollDirection: Axis.vertical,
                    children: List.generate(imgPath.length, (index) {
                      final imgPathIndex = imgPath[index];
                      return VideoListItem(
                        key: Key(index.toString()),
                        index: index,
                        avatarImgUrl:
                            '$imageAppendUrl${imgPathIndex.posterPath}',
                        movieTitle:
                            imgPathIndex.title ?? 'Movie name not available',
                      );
                    }),
                  );
          },
        ),
      ),
    );
  }
}
