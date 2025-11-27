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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(GetTopSearchImages());
    });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'Top Search'),
        kHight10,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return state.isLoading || state.searchResultData.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        if (state.searchResultData[index].backdropPath ==
                            null) {
                          index++;
                        }
                        return TopSearchItemTile(
                          imgUrl:
                              '$imageAppendUrl${state.searchResultData[index].backdropPath}',
                          title: '${state.searchResultData[index].title}',
                        );
                      },
                      separatorBuilder: (context, index) => kHight10,
                      itemCount: state.searchResultData.length,
                    );
            },
          ),
        ),
      ],
    );
  }
}
