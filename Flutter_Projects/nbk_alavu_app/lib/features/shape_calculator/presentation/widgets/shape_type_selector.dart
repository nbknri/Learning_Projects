import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/core/constants/app_strings.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shape.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_state.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/shape_type_chip.dart';

/// Horizontal scrollable selector for choosing shape types
class ShapeTypeSelector extends StatelessWidget {
  final ShapeCalculatorState state;

  const ShapeTypeSelector({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          ShapeTypeChip(
            shapeType: ShapeType.triangle,
            label: AppStrings.triangle,
            icon: Icons.change_history,
            isSelected: state.selectedShapeType == ShapeType.triangle,
          ),
          const SizedBox(width: 8),
          ShapeTypeChip(
            shapeType: ShapeType.rectangle,
            label: AppStrings.rectangle,
            icon: Icons.crop_landscape,
            isSelected: state.selectedShapeType == ShapeType.rectangle,
          ),
          const SizedBox(width: 8),
          ShapeTypeChip(
            shapeType: ShapeType.square,
            label: AppStrings.square,
            icon: Icons.crop_square,
            isSelected: state.selectedShapeType == ShapeType.square,
          ),
          const SizedBox(width: 8),
          ShapeTypeChip(
            shapeType: ShapeType.circle,
            label: AppStrings.circle,
            icon: Icons.circle_outlined,
            isSelected: state.selectedShapeType == ShapeType.circle,
          ),
          const SizedBox(width: 8),
          ShapeTypeChip(
            shapeType: ShapeType.irregularQuadrilateral,
            label: AppStrings.landPlot,
            icon: Icons.terrain,
            isSelected:
                state.selectedShapeType == ShapeType.irregularQuadrilateral,
          ),
        ],
      ),
    );
  }
}
