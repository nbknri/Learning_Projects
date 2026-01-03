import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shape.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/repositories/shape_repository.dart';

/// Use case for adding a shape
/// Contains business logic for shape creation and validation
class AddShapeUseCase {
  final ShapeRepository _repository;

  AddShapeUseCase(this._repository);

  Shape call({
    required ShapeType type,
    required Map<String, String> inputs,
    required String unit,
  }) {
    // Parse inputs to double
    final dimensions = <String, double>{};
    for (final entry in inputs.entries) {
      final value = double.tryParse(entry.value);
      if (value == null) {
        throw Exception('Please fill in all dimensions correctly.');
      }
      dimensions[entry.key] = value;
    }

    // Delegate to repository
    return _repository.createShape(
      type: type,
      dimensions: dimensions,
      unit: unit,
    );
  }
}
