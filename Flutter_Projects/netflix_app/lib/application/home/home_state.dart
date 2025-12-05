part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    required String stateId,
    required List<NewAndHotResultData> pastYearMovieList,
    required List<NewAndHotResultData> trendingMovieList,
    required List<NewAndHotResultData> tensDramaMovieList,
    required List<NewAndHotResultData> southIndianMovieList,
    required List<NewAndHotResultData> topTenTvList,
    required List<DownloadsResultData> bigImageList,
    required bool isError,
    required bool isLoading,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
    stateId: '0',
    pastYearMovieList: [],
    trendingMovieList: [],
    tensDramaMovieList: [],
    southIndianMovieList: [],
    topTenTvList: [],
    isError: false,
    isLoading: false, 
    bigImageList: [], 
  );
}
