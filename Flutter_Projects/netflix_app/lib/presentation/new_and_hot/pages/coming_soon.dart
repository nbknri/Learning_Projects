import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/new_and_hot/new_and_hot_bloc.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/coming_soon_widget.dart';

class ComingSoon extends StatefulWidget {
  const ComingSoon({super.key});

  @override
  State<ComingSoon> createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<NewAndHotBloc>().add(Initialize());
    });
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: BlocBuilder<NewAndHotBloc, NewAndHotState>(
        builder: (context, state) {
          final resultList = state.newAndHotResultList;
          return state.isLoading || resultList.isEmpty
              ? Center(child: CircularProgressIndicator())
              : state.isError
              ? Center(child: Text('Error while getting data'))
              : ListView.separated(
                  itemCount: resultList.length,
                  itemBuilder: (context, index) {
                    if (index >= resultList.length - 1 && !state.isLoading) {
                      context.read<NewAndHotBloc>().add(const LoadNextPage());
                    }

                    if (index == resultList.length) {
                      return const Center(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: CircularProgressIndicator(strokeWidth: 2.0),
                        ),
                      );
                    }
                    final movie = resultList[index];
                    return ComingSoonWidget(
                      imgUrl: '$imageAppendUrl${movie.backdropPath}',
                      releaseDate: movie.releaseDate ?? '',
                      movieTitle: movie.title ?? 'Title not available',
                      originalTitle:
                          movie.originalTitle ??
                          movie.title ??
                          'Title not available',
                      movieDescription:
                          movie.overview ?? 'Description not available',
                    );
                  },
                  separatorBuilder: (context, index) => kHight30,
                );
        },
      ),
    );
  }
}
