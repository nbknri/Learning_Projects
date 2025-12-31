import 'package:freezed_annotation/freezed_annotation.dart';

part 'triangle_calculator_event.freezed.dart';

@freezed
class TriangleCalculatorEvent with _$TriangleCalculatorEvent {
  const factory TriangleCalculatorEvent.addTriangle({
    required String sideA,
    required String sideB,
    required String sideC,
  }) = AddTriangle;
  const factory TriangleCalculatorEvent.deleteTriangle(int index) = DeleteTriangle;
  const factory TriangleCalculatorEvent.clearAll() = ClearAll;
  const factory TriangleCalculatorEvent.setUnit(String unit) = SetUnit;
}
