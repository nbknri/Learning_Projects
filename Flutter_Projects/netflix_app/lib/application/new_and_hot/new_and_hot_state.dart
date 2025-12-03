part of 'new_and_hot_bloc.dart';

@freezed
abstract class NewAndHotState with _$NewAndHotState {
  const factory NewAndHotState({
    required List<NewAndHotResultData> comingSoonResultList,
    required List<NewAndHotResultData> evryonesResultList,
    required bool isLoading,
    required bool isError,
    required int totalPages,
  }) = _NewAndHotState;

  factory NewAndHotState.initial() => const NewAndHotState(
    comingSoonResultList: [],
    evryonesResultList: [],
    isLoading: false,
    isError: false,
    totalPages: 1,
  );
}
