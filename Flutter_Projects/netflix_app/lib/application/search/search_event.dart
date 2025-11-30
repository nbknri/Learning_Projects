part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.getTopSearchImages() = GetTopSearchImages;
  const factory SearchEvent.searchMovies({required String movieQuery}) =
      SearchMovies;
}
