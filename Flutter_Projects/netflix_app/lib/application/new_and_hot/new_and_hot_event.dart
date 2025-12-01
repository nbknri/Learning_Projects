part of 'new_and_hot_bloc.dart';

@freezed
abstract class NewAndHotEvent with _$NewAndHotEvent {
  // const factory NewAndHotEvent.newAndHotComingSoonData({required int page}) =
  //     NewAndHotComingSoonData;
  const factory NewAndHotEvent.initialize() = Initialize;
  const factory NewAndHotEvent.loadNextPage() = LoadNextPage;
}
