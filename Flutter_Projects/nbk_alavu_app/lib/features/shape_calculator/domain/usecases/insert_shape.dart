import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shape.dart';

/// Use case for inserting a shape at a specific index
class InsertShapeUseCase {
  List<Shape> call({
    required List<Shape> shapes,
    required int index,
    required Shape shape,
  }) {
    if (index < 0 || index > shapes.length) {
      throw Exception('Invalid index');
    }
    return List<Shape>.from(shapes)..insert(index, shape);
  }
}
