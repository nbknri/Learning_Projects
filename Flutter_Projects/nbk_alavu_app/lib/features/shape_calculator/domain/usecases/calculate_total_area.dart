import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shape.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/repositories/shape_repository.dart';

/// Use case for calculating total area of all shapes
class CalculateTotalAreaUseCase {
  final ShapeRepository _repository;

  CalculateTotalAreaUseCase(this._repository);

  double call(List<Shape> shapes) {
    return _repository.calculateTotalArea(shapes);
  }
}
