import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/core/constants/app_strings.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shape.dart';

/// Extension for ShapeType presentation concerns
/// Moved from domain layer to follow Clean Architecture
extension ShapeTypeDisplay on ShapeType {
  String get displayName {
    switch (this) {
      case ShapeType.triangle:
        return AppStrings.triangle;
      case ShapeType.rectangle:
        return AppStrings.rectangle;
      case ShapeType.square:
        return AppStrings.square;
      case ShapeType.circle:
        return AppStrings.circle;
      case ShapeType.irregularQuadrilateral:
        return AppStrings.irregularPlot;
    }
  }

  IconData get icon {
    switch (this) {
      case ShapeType.triangle:
        return Icons.change_history;
      case ShapeType.rectangle:
        return Icons.crop_landscape;
      case ShapeType.square:
        return Icons.crop_square;
      case ShapeType.circle:
        return Icons.circle_outlined;
      case ShapeType.irregularQuadrilateral:
        return Icons.terrain;
    }
  }
}
