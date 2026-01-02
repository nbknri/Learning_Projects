import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nbk_alavu_app/core/utils/format_utils.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shape.dart';

part 'shape_calculator_state.freezed.dart';

enum ShapeCalculatorStatus { initial, success, failure }

@freezed
abstract class ShapeCalculatorState with _$ShapeCalculatorState {
  const ShapeCalculatorState._();

  const factory ShapeCalculatorState({
    @Default([]) List<Shape> shapes,
    @Default('Meters') String selectedUnit,
    @Default(ShapeType.triangle) ShapeType selectedShapeType,
    @Default(0.0) double totalAreaSqM,
    @Default(ShapeCalculatorStatus.initial) ShapeCalculatorStatus status,
    String? errorMessage,
  }) = _ShapeCalculatorState;

  String get formattedResult {
    double cents = totalAreaSqM / 40.4686;
    double ares = totalAreaSqM / 100;
    
    // Assuming FormatUtils.formatArea is available from previous imports
    return "Cents: ${FormatUtils.formatArea(cents)}\n"
        "Ares: ${FormatUtils.formatArea(ares)}\n"
        "Sq. Meter: ${FormatUtils.formatArea(totalAreaSqM)}";
  }
}
