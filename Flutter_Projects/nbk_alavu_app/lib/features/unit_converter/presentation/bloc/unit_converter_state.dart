import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nbk_alavu_app/features/unit_converter/domain/entities/area_unit.dart';
import 'package:nbk_alavu_app/features/unit_converter/domain/entities/unit_type.dart';

part 'unit_converter_state.freezed.dart';

@freezed
sealed class UnitConverterState with _$UnitConverterState {
  const factory UnitConverterState({
    double? areaValue,
    @Default(AreaUnit.cents) AreaUnit areaUnit,
    double? lengthValue,
    @Default(UnitType.meters) UnitType lengthUnit,
  }) = _UnitConverterState;
}
