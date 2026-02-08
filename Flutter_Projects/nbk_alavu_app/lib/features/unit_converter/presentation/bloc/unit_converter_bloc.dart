import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nbk_alavu_app/features/unit_converter/presentation/bloc/unit_converter_event.dart';
import 'package:nbk_alavu_app/features/unit_converter/presentation/bloc/unit_converter_state.dart';

@lazySingleton
class UnitConverterBloc extends Bloc<UnitConverterEvent, UnitConverterState> {
  UnitConverterBloc() : super(const UnitConverterState()) {
    on<UpdateAreaInput>(_onUpdateAreaInput);
    on<UpdateLengthInput>(_onUpdateLengthInput);
  }

  void _onUpdateAreaInput(
      UpdateAreaInput event, Emitter<UnitConverterState> emit) {
    emit(state.copyWith(
      areaValue: event.value,
      areaUnit: event.fromUnit,
    ));
  }

  void _onUpdateLengthInput(
      UpdateLengthInput event, Emitter<UnitConverterState> emit) {
    emit(state.copyWith(
      lengthValue: event.value,
      lengthUnit: event.fromUnit,
    ));
  }
}
