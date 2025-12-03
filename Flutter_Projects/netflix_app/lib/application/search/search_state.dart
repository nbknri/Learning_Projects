part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    required List<SearchResultData> searchResultData,
    required List<SearchResultData> searchIdle,
    required bool isLoading,
    required bool isError,
    required bool isSearchResult,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
    searchResultData: [],
    searchIdle: [],
    isLoading: false,
    isError: false, 
    isSearchResult: false,
  );
}
