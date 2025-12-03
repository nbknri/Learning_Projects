part of 'new_and_hot_bloc.dart';

@freezed
abstract class NewAndHotEvent with _$NewAndHotEvent {
  const factory NewAndHotEvent.comingSoonInitialize() = ComingSoonInitialize;
  const factory NewAndHotEvent.comingSoonLoadNextPage() = ComingSoonLoadNextPage;

  const factory NewAndHotEvent.everyonesInitialize() = EveryonesInitialize;
  const factory NewAndHotEvent.everyonesLoadNextPage() = EveryonesLoadNextPage;
}
