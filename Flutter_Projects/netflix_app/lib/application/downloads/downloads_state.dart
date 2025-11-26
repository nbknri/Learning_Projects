part of 'downloads_bloc.dart';

@freezed
abstract class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required List<DownloadsResultData> downloadsResultList,
    required bool isLoading,
    required bool isError,
  }) = _DownloadsState;

  factory DownloadsState.initial() => const DownloadsState(
        downloadsResultList: [], 
        isLoading: false, 
        isError: false,
        );
}
