import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shape.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/usecases/add_shape.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/usecases/calculate_total_area.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/usecases/clear_all_shapes.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/usecases/delete_shape.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_event.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_state.dart';

@injectable
class ShapeCalculatorBloc
    extends Bloc<ShapeCalculatorEvent, ShapeCalculatorState> {
  final AddShapeUseCase _addShapeUseCase;
  final DeleteShapeUseCase _deleteShapeUseCase;
  final ClearAllShapesUseCase _clearAllShapesUseCase;
  final CalculateTotalAreaUseCase _calculateTotalAreaUseCase;

  ShapeCalculatorBloc(
    this._addShapeUseCase,
    this._deleteShapeUseCase,
    this._clearAllShapesUseCase,
    this._calculateTotalAreaUseCase,
  ) : super(const ShapeCalculatorState()) {
    on<AddShape>(_onAddShape);
    on<DeleteShape>(_onDeleteShape);
    on<ClearAll>(_onClearAll);
    on<SetUnit>(_onSetUnit);
    on<SelectShapeType>(_onSelectShapeType);
  }

  void _onSelectShapeType(
    SelectShapeType event,
    Emitter<ShapeCalculatorState> emit,
  ) {
    String newUnit = state.selectedUnit;
    const String sixFeetUnit = '6 Feet';

    // Reset unit to Meters if switching from Rectangle with 6 Feet
    if (event.type != ShapeType.rectangle &&
        state.selectedUnit == sixFeetUnit) {
      newUnit = 'Meters';
    }

    emit(state.copyWith(
      selectedShapeType: event.type,
        selectedUnit: newUnit,
      status: ShapeCalculatorStatus.initial,
      errorMessage: null,
    ));
  }

  void _onAddShape(AddShape event, Emitter<ShapeCalculatorState> emit) {
    emit(
      state.copyWith(errorMessage: null, status: ShapeCalculatorStatus.initial),
    );

    try {
      // Use AddShapeUseCase - all business logic is in domain layer now
      final newShape = _addShapeUseCase(
        type: state.selectedShapeType,
        inputs: event.inputs,
        unit: state.selectedUnit,
      );

      final updatedShapes = List<Shape>.from(state.shapes)..add(newShape);
      final totalArea = _calculateTotalAreaUseCase(updatedShapes);

      emit(state.copyWith(
        shapes: updatedShapes,
        totalAreaSqM: totalArea,
        status: ShapeCalculatorStatus.success,
        errorMessage: null,
        ),
      );
    } catch (e) {
      emit(state.copyWith(
        status: ShapeCalculatorStatus.failure,
        errorMessage: e.toString().replaceAll('Exception: ', ''),
      ));
    }
  }

  void _onDeleteShape(DeleteShape event, Emitter<ShapeCalculatorState> emit) {
    try {
      // Use DeleteShapeUseCase
      final updatedShapes = _deleteShapeUseCase(
        shapes: state.shapes,
        index: event.index,
      );
      final totalArea = _calculateTotalAreaUseCase(updatedShapes);

      emit(
        state.copyWith(
          shapes: updatedShapes,
          totalAreaSqM: totalArea,
          errorMessage: null,
          status: ShapeCalculatorStatus.initial,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: ShapeCalculatorStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  void _onClearAll(ClearAll event, Emitter<ShapeCalculatorState> emit) {
    // Use ClearAllShapesUseCase
    final emptyShapes = _clearAllShapesUseCase<Shape>();

    emit(state.copyWith(
        shapes: emptyShapes,
      totalAreaSqM: 0.0,
      errorMessage: null,
      status: ShapeCalculatorStatus.initial,
    ));
  }

  void _onSetUnit(SetUnit event, Emitter<ShapeCalculatorState> emit) {
    emit(state.copyWith(
      selectedUnit: event.unit,
      errorMessage: null,
      status: ShapeCalculatorStatus.initial,
    ));
  }
}
