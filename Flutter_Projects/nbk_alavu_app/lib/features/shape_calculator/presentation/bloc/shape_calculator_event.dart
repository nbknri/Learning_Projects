import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shape.dart';

part 'shape_calculator_event.freezed.dart';

@freezed
class ShapeCalculatorEvent with _$ShapeCalculatorEvent {
  const factory ShapeCalculatorEvent.addShape({
    required Map<String, String> inputs,
  }) = AddShape;
  
  const factory ShapeCalculatorEvent.deleteShape(int index) = DeleteShape;
  const factory ShapeCalculatorEvent.insertShape({
    required int index,
    required Shape shape,
  }) = InsertShape;

  const factory ShapeCalculatorEvent.updateShape({
    required int index,
    required Map<String, String> inputs,
    required ShapeType type,
    required String unit,
  }) = UpdateShape;
  
  const factory ShapeCalculatorEvent.clearAll() = ClearAll;
  const factory ShapeCalculatorEvent.setUnit(String unit) = SetUnit;
  const factory ShapeCalculatorEvent.selectShapeType(ShapeType type) = SelectShapeType;
}
