import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nbk_alavu_app/core/constants/app_strings.dart';
import 'package:nbk_alavu_app/core/theme/app_color.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_bloc.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_state.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/clear_all_dialog.dart';

/// AppBar action button for clearing all measurements
class ClearAllButton extends StatelessWidget {
  const ClearAllButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShapeCalculatorBloc, ShapeCalculatorState>(
      builder: (context, state) {
        return IconButton(
          onPressed: state.shapes.isNotEmpty
              ? () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  _showClearAllDialog(context);
                }
              : null,
          icon: const Icon(Icons.delete_sweep, color: AppColor.white),
          tooltip: AppStrings.clearAllTooltip,
        );
      },
    );
  }

  void _showClearAllDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (dialogContext) => BlocProvider.value(
        value: context.read<ShapeCalculatorBloc>(),
        child: const ClearAllDialog(),
      ),
    );
  }
}
