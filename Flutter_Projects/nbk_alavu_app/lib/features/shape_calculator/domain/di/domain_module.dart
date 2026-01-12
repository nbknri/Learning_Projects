import 'package:injectable/injectable.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/repositories/shape_repository.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/usecases/add_shape.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/usecases/calculate_total_area.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/usecases/clear_all_shapes.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/usecases/delete_shape.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/usecases/insert_shape.dart';

/// Dependency injection module for domain layer use cases
@module
abstract class DomainModule {
  @lazySingleton
  AddShapeUseCase addShapeUseCase(ShapeRepository repository) =>
      AddShapeUseCase(repository);

  @lazySingleton
  DeleteShapeUseCase get deleteShapeUseCase => DeleteShapeUseCase();

  @lazySingleton
  InsertShapeUseCase get insertShapeUseCase => InsertShapeUseCase();

  @lazySingleton
  ClearAllShapesUseCase get clearAllShapesUseCase => ClearAllShapesUseCase();

  @lazySingleton
  CalculateTotalAreaUseCase calculateTotalAreaUseCase(
          ShapeRepository repository) =>
      CalculateTotalAreaUseCase(repository);
}
