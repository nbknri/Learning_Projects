import 'package:injectable/injectable.dart';
import 'package:nbk_alavu_app/features/shape_calculator/data/factories/shape_factory.dart';

/// Dependency injection module for data layer
@module
abstract class DataModule {
  @lazySingleton
  ShapeFactory get shapeFactory => ShapeFactory();
}
