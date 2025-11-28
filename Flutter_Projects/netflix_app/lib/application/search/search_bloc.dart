import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/failures/main_failures.dart';
import 'package:netflix_app/domain/search/model/search_resp/search_resp.dart';
import 'package:netflix_app/domain/search/search_service.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchService _searchService;

  SearchBloc(this._searchService) : super(SearchState.initial()) {
    on<GetTopSearchImages>((event, emit) async {
      if (state.searchIdle.isNotEmpty) {
        emit(
          SearchState(
            searchResultData: [],
            searchIdle: state.searchIdle,
            isLoading: false,
            isError: false,
          ),
        );
        return;
      }

      final result = await _searchService.getTopSearchImages();
      final stateResult = result.fold(
        (MainFailures l) {
          return SearchState(
            searchResultData: [],
            searchIdle: [],
            isLoading: false,
            isError: true,
          );
        },
        (SearchResp r) {
          return SearchState(
            searchResultData: [],
            searchIdle: r.results,
            isLoading: false,
            isError: false,
          );
        },
      );
      emit(stateResult);
    });

    on<SearchMovies>((event, emit) async {
      emit(
        const SearchState(
          searchResultData: [],
          searchIdle: [],
          isLoading: true,
          isError: false,
        ),
      );
      final result = await _searchService.searchMovies(
        movieQuery: event.movieQuery,
      );
      final stateResult = result.fold(
        (MainFailures l) {
          return SearchState(
            searchResultData: [],
            searchIdle: [],
            isLoading: false,
            isError: true,
          );
        },
        (SearchResp r) {
          return SearchState(
            searchResultData: r.results,
            searchIdle: [],
            isLoading: false,
            isError: false,
          );
        },
      );
      emit(stateResult);
    });
  }
}
