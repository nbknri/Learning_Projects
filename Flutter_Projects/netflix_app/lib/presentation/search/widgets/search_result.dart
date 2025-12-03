import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/search/search_bloc.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/search/widgets/search_result_item.dart';
import 'package:netflix_app/presentation/widgets/title_text.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title: 'Movie & TV'),
        kHight10,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              final data = state.searchResultData;
              print(data);
              print('I am called');
              return state.isLoading
                  ? Center(child: CircularProgressIndicator())
                  : state.isError
                  ? Center(child: Text('Error while getting data'))
                  : data.isEmpty
                  ? Center(child: Text('Movie is not available'))
                  : GridView.count(
                      shrinkWrap: true,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      childAspectRatio: 2 / 3,
                      crossAxisCount: 3,
                      children: List.generate(data.length, (index) {
                        final dataIndex = data[index];
                        return SearchResultItem(
                          imgUrl: '$imageAppendUrl${dataIndex.posterPath}',
                        );
                      }),
                    );
            },
          ),
        ),
      ],
    );
  }
}
