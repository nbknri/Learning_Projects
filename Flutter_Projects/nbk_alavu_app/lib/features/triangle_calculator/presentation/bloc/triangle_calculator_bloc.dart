import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nbk_alavu_app/features/triangle_calculator/domain/entities/triangle_model.dart';
import 'package:nbk_alavu_app/features/triangle_calculator/presentation/bloc/triangle_calculator_event.dart';
import 'package:nbk_alavu_app/features/triangle_calculator/presentation/bloc/triangle_calculator_state.dart';

@injectable
class TriangleCalculatorBloc extends Bloc<TriangleCalculatorEvent, TriangleCalculatorState> {
  TriangleCalculatorBloc() : super(const TriangleCalculatorState()) {
    on<AddTriangle>(_onAddTriangle);
    on<DeleteTriangle>(_onDeleteTriangle);
    on<ClearAll>(_onClearAll);
    on<SetUnit>(_onSetUnit);
  }

  void _onAddTriangle(AddTriangle event, Emitter<TriangleCalculatorState> emit) {
    // Clear previous error
    emit(
      state.copyWith(
        errorMessage: null,
        status: TriangleCalculatorStatus.initial,
      ),
    );

    double? a = double.tryParse(event.sideA);
    double? b = double.tryParse(event.sideB);
    double? c = double.tryParse(event.sideC);

    if (a == null || b == null || c == null) {
      emit(
        state.copyWith(
          status: TriangleCalculatorStatus.failure,
          errorMessage: "ദയവായി എല്ലാ അളവുകളും കൃത്യമായി നൽകുക.",
        ),
      );
      return;
    }

    double aM = state.selectedUnit == 'Feet' ? a * 0.3048 : a;
    double bM = state.selectedUnit == 'Feet' ? b * 0.3048 : b;
    double cM = state.selectedUnit == 'Feet' ? c * 0.3048 : c;

    if (aM + bM <= cM || aM + cM <= bM || bM + cM <= aM) {
      emit(
        state.copyWith(
          status: TriangleCalculatorStatus.failure,
          errorMessage: "ഈ അളവുകൾ വെച്ച് ഒരു ത്രികോണം നിർമ്മിക്കാൻ കഴിയില്ല.",
        ),
      );
      return;
    }

    double s = (aM + bM + cM) / 2;
    double area = sqrt(s * (s - aM) * (s - bM) * (s - cM));

    final newTriangle = TriangleModel(
      sideA: a,
      sideB: b,
      sideC: c,
      areaInSqMeter: area,
    );

    final updatedTriangles = List<TriangleModel>.from(state.triangles)..add(newTriangle);
    final totalArea = _calculateTotal(updatedTriangles);

    emit(state.copyWith(
      triangles: updatedTriangles,
      totalAreaSqM: totalArea,
        status: TriangleCalculatorStatus.success,
      errorMessage: null, // Success clears error
    ));
  }

  void _onDeleteTriangle(DeleteTriangle event, Emitter<TriangleCalculatorState> emit) {
    final updatedTriangles = List<TriangleModel>.from(state.triangles)..removeAt(event.index);
    final totalArea = _calculateTotal(updatedTriangles);

    emit(state.copyWith(
      triangles: updatedTriangles,
      totalAreaSqM: totalArea,
      errorMessage: null,
        status: TriangleCalculatorStatus.initial,
    ));
  }

  void _onClearAll(ClearAll event, Emitter<TriangleCalculatorState> emit) {
    emit(state.copyWith(
      triangles: [],
      totalAreaSqM: 0.0,
      errorMessage: null,
        status: TriangleCalculatorStatus.initial,
    ));
  }

  void _onSetUnit(SetUnit event, Emitter<TriangleCalculatorState> emit) {
    emit(state.copyWith(
      selectedUnit: event.unit,
      errorMessage: null,
        status: TriangleCalculatorStatus.initial, // Reset status
    ));
  }

  double _calculateTotal(List<TriangleModel> triangles) {
    return triangles.fold(0.0, (sum, t) => sum + t.areaInSqMeter);
  }
}
