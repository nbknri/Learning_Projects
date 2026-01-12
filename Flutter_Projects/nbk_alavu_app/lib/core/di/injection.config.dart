// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/shape_calculator/data/di/data_module.dart' as _i712;
import '../../features/shape_calculator/data/factories/shape_factory.dart'
    as _i40;
import '../../features/shape_calculator/data/repositories/shape_repository_impl.dart'
    as _i52;
import '../../features/shape_calculator/domain/di/domain_module.dart' as _i221;
import '../../features/shape_calculator/domain/repositories/shape_repository.dart'
    as _i850;
import '../../features/shape_calculator/domain/usecases/add_shape.dart'
    as _i132;
import '../../features/shape_calculator/domain/usecases/calculate_total_area.dart'
    as _i424;
import '../../features/shape_calculator/domain/usecases/clear_all_shapes.dart'
    as _i1000;
import '../../features/shape_calculator/domain/usecases/delete_shape.dart'
    as _i527;
import '../../features/shape_calculator/domain/usecases/insert_shape.dart'
    as _i859;
import '../../features/shape_calculator/presentation/bloc/shape_calculator_bloc.dart'
    as _i1072;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final dataModule = _$DataModule();
    final domainModule = _$DomainModule();
    gh.lazySingleton<_i40.ShapeFactory>(() => dataModule.shapeFactory);
    gh.lazySingleton<_i527.DeleteShapeUseCase>(
      () => domainModule.deleteShapeUseCase,
    );
    gh.lazySingleton<_i859.InsertShapeUseCase>(
      () => domainModule.insertShapeUseCase,
    );
    gh.lazySingleton<_i1000.ClearAllShapesUseCase>(
      () => domainModule.clearAllShapesUseCase,
    );
    gh.lazySingleton<_i850.ShapeRepository>(
      () => _i52.ShapeRepositoryImpl(gh<_i40.ShapeFactory>()),
    );
    gh.lazySingleton<_i132.AddShapeUseCase>(
      () => domainModule.addShapeUseCase(gh<_i850.ShapeRepository>()),
    );
    gh.lazySingleton<_i424.CalculateTotalAreaUseCase>(
      () => domainModule.calculateTotalAreaUseCase(gh<_i850.ShapeRepository>()),
    );
    gh.factory<_i1072.ShapeCalculatorBloc>(
      () => _i1072.ShapeCalculatorBloc(
        gh<_i132.AddShapeUseCase>(),
        gh<_i527.DeleteShapeUseCase>(),
        gh<_i859.InsertShapeUseCase>(),
        gh<_i1000.ClearAllShapesUseCase>(),
        gh<_i424.CalculateTotalAreaUseCase>(),
      ),
    );
    return this;
  }
}

class _$DataModule extends _i712.DataModule {}

class _$DomainModule extends _i221.DomainModule {}
