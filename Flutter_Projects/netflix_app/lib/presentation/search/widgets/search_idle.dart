import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/search/search_bloc.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/search/widgets/top_search_item.dart';
import 'package:netflix_app/presentation/widgets/title_text.dart';

class SearchIdle extends StatelessWidget {
  const SearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'Top Search'),
        kHight10,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              final data = state.searchIdle;
              return state.isLoading || state.searchIdle.isEmpty
                  ? Center(child: CircularProgressIndicator(strokeWidth: 2.0))
                  : state.isError
                  ? Center(child: Text('Error while getting data'))
                  : ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final dataIndex = data[index];
                        return TopSearchItemTile(
                          imgUrl: '$imageAppendUrl${dataIndex.backdropPath}}',
                          title: dataIndex.title ?? 'No title provider',
                        );
                      },
                      separatorBuilder: (context, index) => kHight10,
                      itemCount: data.length,
                    );
            },
          ),
        ),
      ],
    );
  }
}
