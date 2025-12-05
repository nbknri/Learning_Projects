import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/new_and_hot/new_and_hot_bloc.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/everyones_watching_widgets.dart';

class EveryonesWatching extends StatelessWidget {
  const EveryonesWatching({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async =>
          context.read<NewAndHotBloc>().add(EveryonesInitialize()),
      child: BlocBuilder<NewAndHotBloc, NewAndHotState>(
        builder: (context, state) {
          final resultList = state.evryonesResultList;
          return state.isLoading
              ? Center(child: CircularProgressIndicator(strokeWidth: 2))
              : state.isError
              ? Center(child: Text('Error getting data'))
              : resultList.isEmpty
              ? Center(child: Text('List is Empty'))
              : ListView.separated(
                  padding: EdgeInsets.all(15),
                  itemBuilder: (context, index) {
                    if (index >= resultList.length - 1 && !state.isLoading) {
                      context.read<NewAndHotBloc>().add(
                        EveryonesLoadNextPage(),
                      );
                    }
                    if (index == resultList.length) {
                      return const Center(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: CircularProgressIndicator(strokeWidth: 2.0),
                        ),
                      );
                    }
                    final programData = resultList[index];
                    return EveryonesWatchingWidget(
                      imgUrl: (programData.backdropPath) != null
                          ? '$imageAppendUrl${programData.backdropPath}'
                          : '$imageAppendUrl${programData.posterPath}',
                      programName: programData.name ?? 'Name not available',
                      programOriginalName:
                          programData.originalName ??
                          programData.name ??
                          'Name not available',
                      programDescription:
                          programData.overview ?? 'Description not available',
                    );
                  },
                  separatorBuilder: (context, index) => kWidth50,
                  itemCount: resultList.length,
                );
        },
      ),
    );
  }
}
