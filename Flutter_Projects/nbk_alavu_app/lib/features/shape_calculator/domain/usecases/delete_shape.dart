import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shape.dart';

/// Use case for deleting a shape from the list
class DeleteShapeUseCase {
  List<Shape> call({
    required List<Shape> shapes,
    required int index,
  }) {
    if (index < 0 || index >= shapes.length) {
      throw Exception('Invalid index');
    }
    return List<Shape>.from(shapes)..removeAt(index);
  }
}
