part of 'fast_laugh_bloc.dart';

@freezed
abstract class FastLaughState with _$FastLaughState {
  const factory FastLaughState({
    required List<DownloadsResultData> videoList,
    required bool isLoading,
    required bool isError,
    required List<int> likedVideoIds,
    required List<int> myListVideoIds,
    required bool isMuted,
  }) = _Initial;

  factory FastLaughState.initial() => const FastLaughState(
    videoList: [],
    isLoading: true,
    isError: false,
    likedVideoIds: [],
    myListVideoIds: [],
    isMuted: true,
  );
}
