import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shape.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shapes_impl.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_event.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_state.dart';

@injectable
class ShapeCalculatorBloc extends Bloc<ShapeCalculatorEvent, ShapeCalculatorState> {
  ShapeCalculatorBloc() : super(const ShapeCalculatorState()) {
    on<AddShape>(_onAddShape);
    on<DeleteShape>(_onDeleteShape);
    on<ClearAll>(_onClearAll);
    on<SetUnit>(_onSetUnit);
    on<SelectShapeType>(_onSelectShapeType);
  }

  void _onSelectShapeType(SelectShapeType event, Emitter<ShapeCalculatorState> emit) {
    // If switching FROM Rectangle (where '6 Feet' might be selected) TO another shape,
    // we need to reset the unit if it is '6 Feet', because '6 Feet' is not valid for others.
    // However, event.type is the NEW shape type.
    // If the NEW shape is NOT Rectangle, and the current selectedUnit is '6 Feet', reset to 'Meters'.
    // Or simpler: Just ensure unit is valid.

    String newUnit = state.selectedUnit;
    const String adharamUnit = '6 Feet';

    if (event.type != ShapeType.rectangle &&
        state.selectedUnit == adharamUnit) {
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
    emit(state.copyWith(errorMessage: null, status: ShapeCalculatorStatus.initial));

    try {
      final Shape? newShape = _createShape(state.selectedShapeType, event.inputs, state.selectedUnit);
      
      if (newShape == null) {
        // Error message handling might be inside _createShape or explicitly here if generic
         // If _createShape throws or returns null due to invalid input
        return; 
      }

      final updatedShapes = List<Shape>.from(state.shapes)..add(newShape);
      final totalArea = _calculateTotal(updatedShapes);

      emit(state.copyWith(
        shapes: updatedShapes,
        totalAreaSqM: totalArea,
        status: ShapeCalculatorStatus.success,
        errorMessage: null,
      ));

    } catch (e) {
      emit(state.copyWith(
        status: ShapeCalculatorStatus.failure,
        errorMessage: e.toString().replaceAll('Exception: ', ''),
      ));
    }
  }

  Shape? _createShape(ShapeType type, Map<String, String> inputs, String unit) {

    
    // We store original input values in the shape usually? 
    // Or we store standardized metric values?
    // The previous implementation stored original values in TriangleModel, but calculated area in meters.
    // However, Shape.dimensions usually implies displayable dimensions.
    // Let's stick to previous logic: Input -> Convert to Meters if needed for Area calculation.
    // But for Display, should we show original? state.selectedUnit might change.
    // Previous implementation: "double? a ..." then "double aM = ...". "TriangleModel(sideA: a...)" 
    // It stored the ORIGINAL input value. 
    // SO:
    
    double parseOriginal(String key) {
       final val = double.tryParse(inputs[key] ?? '');
       if (val == null) throw Exception("ദയവായി എല്ലാ അളവുകളും കൃത്യമായി നൽകുക.");
       return val;
    }

    switch (type) {
      case ShapeType.triangle:
        final a = parseOriginal('sideA');
        final b = parseOriginal('sideB');
        final c = parseOriginal('sideC');
        
        // Validation conversion for logic
        final aM = unit == 'Feet' ? a * 0.3048 : a;
        final bM = unit == 'Feet' ? b * 0.3048 : b;
        final cM = unit == 'Feet' ? c * 0.3048 : c;

        if (aM + bM <= cM || aM + cM <= bM || bM + cM <= aM) {
          throw Exception("ഈ അളവുകൾ വെച്ച് ഒരു ത്രികോണം നിർമ്മിക്കാൻ കഴിയില്ല.");
        }

        double s = (aM + bM + cM) / 2;
        double area = sqrt(s * (s - aM) * (s - bM) * (s - cM));

        return Triangle(sideA: a, sideB: b, sideC: c, area: area);

      case ShapeType.rectangle:
        final l = parseOriginal('length');
        final w = parseOriginal('width');
        
        double lM = l;
        double wM = w;

        if (unit == 'Feet') {
          lM = l * 0.3048;
          wM = w * 0.3048;
        } else if (unit == '6 Feet') {
          // 1 Unit = 6 Feet = 1.8288 Meters
          lM = l * 1.8288;
          wM = w * 1.8288;
        }
        
        return Rectangle(length: l, width: w, overrideArea: lM * wM);


      case ShapeType.square:
        final side = parseOriginal('side');
        final sideM = unit == 'Feet' ? side * 0.3048 : side;
        final sqArea = sideM * sideM;
        return Square(side: side, overrideArea: sqArea);

      case ShapeType.circle:
        final r = parseOriginal('radius');
        final rM = unit == 'Feet' ? r * 0.3048 : r;
        final cArea = pi * rM * rM;
        return Circle(radius: r, overrideArea: cArea);

      case ShapeType.irregularQuadrilateral:
        final north = parseOriginal('sideA');
        final east = parseOriginal('sideB');
        final south = parseOriginal('sideC');
        final west = parseOriginal('sideD');
        
        final nM = unit == 'Feet' ? north * 0.3048 : north;
        final eM = unit == 'Feet' ? east * 0.3048 : east;
        final sM = unit == 'Feet' ? south * 0.3048 : south;
        final wM = unit == 'Feet' ? west * 0.3048 : west;

        // Average Method Formula
        final areaSqM = ((nM + sM) / 2) * ((eM + wM) / 2);

        return IrregularQuadrilateral(
          sideA: north,
          sideB: east,
          sideC: south,
          sideD: west,
          area: areaSqM,
        );
    }
  }

  void _onDeleteShape(DeleteShape event, Emitter<ShapeCalculatorState> emit) {
    final updatedShapes = List<Shape>.from(state.shapes)..removeAt(event.index);
    final totalArea = _calculateTotal(updatedShapes);

    emit(state.copyWith(
      shapes: updatedShapes,
      totalAreaSqM: totalArea,
      errorMessage: null,
      status: ShapeCalculatorStatus.initial,
    ));
  }

  void _onClearAll(ClearAll event, Emitter<ShapeCalculatorState> emit) {
    emit(state.copyWith(
      shapes: [],
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

  double _calculateTotal(List<Shape> shapes) {
    return shapes.fold(0.0, (sum, t) => sum + t.areaInSqMeter);
  }
}
