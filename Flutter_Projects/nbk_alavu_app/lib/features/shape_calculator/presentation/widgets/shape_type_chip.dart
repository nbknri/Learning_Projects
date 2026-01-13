import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nbk_alavu_app/core/theme/app_color.dart';
import 'package:nbk_alavu_app/core/theme/app_text_style.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shape.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_bloc.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_event.dart';

/// A chip for selecting a shape type in the calculator
class ShapeTypeChip extends StatelessWidget {
  final ShapeType shapeType;
  final String label;
  final IconData icon;
  final bool isSelected;

  const ShapeTypeChip({
    super.key,
    required this.shapeType,
    required this.label,
    required this.icon,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 18, color: isSelected ? AppColor.white : null),
          const SizedBox(width: 6),
          Text(label),
        ],
      ),
      selected: isSelected,
      onSelected: (selected) {
        FocusManager.instance.primaryFocus?.unfocus();
        if (selected) {
          context.read<ShapeCalculatorBloc>().add(
                ShapeCalculatorEvent.selectShapeType(shapeType),
              );
        }
      },
      selectedColor: AppColor.accent,
      labelStyle: Theme.of(context).choiceChipLabelStyle(isSelected),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      showCheckmark: false,
    );
  }
}
