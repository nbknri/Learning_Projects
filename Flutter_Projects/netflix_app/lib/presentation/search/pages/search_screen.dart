import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/search/search_bloc.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/domain/core/debounce/debounce.dart';
import 'package:netflix_app/presentation/search/widgets/search_idle.dart';
import 'package:netflix_app/presentation/search/widgets/search_result.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final _debouncer = Debouncer(milliseconds: 1000);

  @override
  Widget build(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(GetTopSearchImages());
    });

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
                child: CupertinoSearchTextField(
                  backgroundColor: kGreyColor.withValues(alpha: 0.25),
                  prefixIcon: Icon(CupertinoIcons.search, color: kGreyColor),
                  onChanged: (value) {
                    _debouncer.run(() {
                      if (value.trim().isNotEmpty) {
                        BlocProvider.of<SearchBloc>(
                          context,
                        ).add(SearchMovies(movieQuery: value));
                      } else {
                        BlocProvider.of<SearchBloc>(
                          context,
                        ).add(GetTopSearchImages());
                      }
                    });
                  },
                ),
              ),
              kHight10,
              Expanded(
                child: BlocBuilder<SearchBloc, SearchState>(
                  builder: (context, state) {
                    return (state.searchResultData.isEmpty)
                        ? const SearchIdle()
                        : const SearchResult();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
