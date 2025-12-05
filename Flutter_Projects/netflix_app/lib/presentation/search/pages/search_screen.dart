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
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                  controller: _searchController,
                  backgroundColor: kGreyColor.withValues(alpha: 0.25),
                  prefixIcon: Icon(CupertinoIcons.search, color: kGreyColor),
                  onChanged: (value) {
                    if (value.trim().isEmpty) {
                      context.read<SearchBloc>().add(GetTopSearchImages());
                    } else {
                      _debouncer.run(() {
                        if (_searchController.text.trim().isEmpty) return;
                        context.read<SearchBloc>().add(
                          SearchMovies(movieQuery: value),
                        );
                      });
                    }
                  },
                ),
              ),
              kHight10,
              Expanded(
                child: BlocBuilder<SearchBloc, SearchState>(
                  builder: (context, state) {
                    return (_searchController.text.trim().isEmpty)
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
