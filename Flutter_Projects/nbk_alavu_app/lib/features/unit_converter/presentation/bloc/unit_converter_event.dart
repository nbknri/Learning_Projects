import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nbk_alavu_app/features/unit_converter/domain/entities/area_unit.dart';
import 'package:nbk_alavu_app/features/unit_converter/domain/entities/unit_type.dart';

part 'unit_converter_event.freezed.dart';

@freezed
sealed class UnitConverterEvent with _$UnitConverterEvent {
  const factory UnitConverterEvent.updateAreaInput({
    double? value,
    required AreaUnit fromUnit,
  }) = UpdateAreaInput;

  const factory UnitConverterEvent.updateLengthInput({
    double? value,
    required UnitType fromUnit,
  }) = UpdateLengthInput;
}
