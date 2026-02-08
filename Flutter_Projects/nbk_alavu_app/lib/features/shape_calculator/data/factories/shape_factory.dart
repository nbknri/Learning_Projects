import 'dart:math';

import 'package:nbk_alavu_app/core/constants/shape_keys.dart';
import 'package:nbk_alavu_app/features/shape_calculator/data/services/unit_converter.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shape.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shapes_impl.dart';

/// Factory for creating shape instances with proper validation and calculation
class ShapeFactory {
  /// Creates a shape based on type and dimensions
  Shape createShape({
    required ShapeType type,
    required Map<String, double> dimensions,
    required String unit,
  }) {
    switch (type) {
      case ShapeType.triangle:
        return _createTriangle(dimensions, unit);
      case ShapeType.rectangle:
        return _createRectangle(dimensions, unit);
      case ShapeType.square:
        return _createSquare(dimensions, unit);

      case ShapeType.irregularQuadrilateral:
        return _createIrregularQuadrilateral(dimensions, unit);
    }
  }

  Shape _createTriangle(Map<String, double> dimensions, String unit) {
    final a = dimensions[ShapeKeys.sideA]!;
    final b = dimensions[ShapeKeys.sideB]!;
    final c = dimensions[ShapeKeys.sideC]!;

    // Convert to meters for calculation
    final aM = UnitConverter.toMeters(a, unit);
    final bM = UnitConverter.toMeters(b, unit);
    final cM = UnitConverter.toMeters(c, unit);

    // Validate triangle inequality
    if (aM + bM <= cM || aM + cM <= bM || bM + cM <= aM) {
      throw Exception(
        'Cannot form a triangle with these sides. Check your inputs.',
      );
    }

    // Calculate area using Heron's formula
    final s = (aM + bM + cM) / 2;
    final area = sqrt(s * (s - aM) * (s - bM) * (s - cM));

    return Triangle(sideA: a, sideB: b, sideC: c, area: area, unit: unit);
  }

  Shape _createRectangle(Map<String, double> dimensions, String unit) {
    final l = dimensions[ShapeKeys.length]!;
    final w = dimensions[ShapeKeys.width]!;

    final lM = UnitConverter.toMeters(l, unit);
    final wM = UnitConverter.toMeters(w, unit);

    return Rectangle(length: l, width: w, overrideArea: lM * wM, unit: unit);
  }

  Shape _createSquare(Map<String, double> dimensions, String unit) {
    final side = dimensions[ShapeKeys.side]!;
    final sideM = UnitConverter.toMeters(side, unit);

    return Square(side: side, overrideArea: sideM * sideM, unit: unit);
  }



  Shape _createIrregularQuadrilateral(
    Map<String, double> dimensions,
    String unit,
  ) {
    final north = dimensions[ShapeKeys.sideA]!;
    final east = dimensions[ShapeKeys.sideB]!;
    final south = dimensions[ShapeKeys.sideC]!;
    final west = dimensions[ShapeKeys.sideD]!;

    final nM = UnitConverter.toMeters(north, unit);
    final eM = UnitConverter.toMeters(east, unit);
    final sM = UnitConverter.toMeters(south, unit);
    final wM = UnitConverter.toMeters(west, unit);

    // Average method formula
    final area = ((nM + sM) / 2) * ((eM + wM) / 2);

    return IrregularQuadrilateral(
      sideA: north,
      sideB: east,
      sideC: south,
      sideD: west,
      area: area,
      unit: unit,
    );
  }
}
