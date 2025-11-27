part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    required List<SearchResultData> searchResultData,
    required bool isLoading,
    required bool isError,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
    searchResultData: [],
    isLoading: false,
    isError: false,
  );
}
