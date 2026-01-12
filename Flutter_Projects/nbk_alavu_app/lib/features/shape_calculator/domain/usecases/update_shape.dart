import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shape.dart';

class UpdateShapeUseCase {
  List<Shape> call(List<Shape> currentShapes, int index, Shape newShape) {
    if (index < 0 || index >= currentShapes.length) {
      return currentShapes;
    }
    final newShapes = List<Shape>.from(currentShapes);
    newShapes[index] = newShape;
    return newShapes;
  }
}
