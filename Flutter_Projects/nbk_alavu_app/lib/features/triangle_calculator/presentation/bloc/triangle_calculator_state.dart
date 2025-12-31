import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nbk_alavu_app/core/utils/format_utils.dart';
import 'package:nbk_alavu_app/features/triangle_calculator/domain/entities/triangle_model.dart';

part 'triangle_calculator_state.freezed.dart';


enum TriangleCalculatorStatus { initial, success, failure }

@freezed
abstract class TriangleCalculatorState with _$TriangleCalculatorState {
  const TriangleCalculatorState._();

  const factory TriangleCalculatorState({
    @Default([]) List<TriangleModel> triangles,
    @Default('Meters') String selectedUnit,
    @Default(0.0) double totalAreaSqM,
    @Default(TriangleCalculatorStatus.initial) TriangleCalculatorStatus status,
    String? errorMessage,
  }) = _TriangleCalculatorState;

  String get formattedResult {
    double cents = totalAreaSqM / 40.4686;
    double ares = totalAreaSqM / 100;

    return "Cents: ${FormatUtils.formatArea(cents)}\n"
        "Ares: ${FormatUtils.formatArea(ares)}\n"
        "Sq. Meter: ${FormatUtils.formatArea(totalAreaSqM)}";
  }
}
