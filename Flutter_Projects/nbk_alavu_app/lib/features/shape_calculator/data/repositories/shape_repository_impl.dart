import 'package:injectable/injectable.dart';
import 'package:nbk_alavu_app/features/shape_calculator/data/factories/shape_factory.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shape.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/repositories/shape_repository.dart';

/// Implementation of ShapeRepository
/// Contains actual business logic for shape operations
@LazySingleton(as: ShapeRepository)
class ShapeRepositoryImpl implements ShapeRepository {
  final ShapeFactory _shapeFactory;

  ShapeRepositoryImpl(this._shapeFactory);

  @override
  Shape createShape({
    required ShapeType type,
    required Map<String, double> dimensions,
    required String unit,
  }) {
    return _shapeFactory.createShape(
      type: type,
      dimensions: dimensions,
      unit: unit,
    );
  }

  @override
  double calculateTotalArea(List<Shape> shapes) {
    return shapes.fold(0.0, (sum, shape) => sum + shape.areaInSqMeter);
  }
}
