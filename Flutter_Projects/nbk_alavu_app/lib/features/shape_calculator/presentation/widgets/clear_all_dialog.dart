import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nbk_alavu_app/core/constants/app_strings.dart';
import 'package:nbk_alavu_app/core/theme/app_text_style.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_bloc.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_event.dart';

/// Confirmation dialog for clearing all measurements
class ClearAllDialog extends StatelessWidget {
  const ClearAllDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(AppStrings.clearAllTitle),
      content: const Text(AppStrings.clearAllMessage),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text(AppStrings.cancel),
        ),
        TextButton(
          onPressed: () {
            context.read<ShapeCalculatorBloc>().add(
                  const ShapeCalculatorEvent.clearAll(),
                );
            Navigator.pop(context);
          },
          child: Text(
            AppStrings.delete,
            style: Theme.of(context).errorTextStyle,
          ),
        ),
      ],
    );
  }
}
