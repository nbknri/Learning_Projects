import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shape.dart';

/// Repository interface for shape operations
/// Following Clean Architecture, this is defined in domain layer
abstract class ShapeRepository {
  /// Creates a shape based on type, dimensions, and unit
  /// Returns Either< Failure, Shape > for proper error handling
  Shape createShape({
    required ShapeType type,
    required Map<String, double> dimensions,
    required String unit,
  });

  /// Calculates total area from a list of shapes
  double calculateTotalArea(List<Shape> shapes);
}
