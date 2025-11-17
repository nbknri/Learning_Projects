import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/constants.dart';
import 'package:netflix_app/presentation/search/widgets/search_result_item.dart';
import 'package:netflix_app/presentation/search/widgets/search_title_text.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTitleText(title: 'Movie & TV'),
        sizedBoxHight,
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 2 / 3,
            crossAxisCount: 3,
            children: List.generate(20, (index) {
              return SearchResultItem();
            }),
          ),
        ),
      ],
    );
  }
}
