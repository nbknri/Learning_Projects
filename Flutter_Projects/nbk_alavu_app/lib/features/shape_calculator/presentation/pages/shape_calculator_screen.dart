import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nbk_alavu_app/core/di/injection.dart';
import 'package:nbk_alavu_app/core/presentation/widgets/app_drawer.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_bloc.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/shape_calculator_app_bar.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/shape_calculator_body.dart';
import 'package:nbk_alavu_app/features/unit_converter/presentation/pages/unit_converter_screen.dart';

class ShapeCalculatorScreen extends StatelessWidget {
  final VoidCallback onThemeChanged;

  const ShapeCalculatorScreen({super.key, required this.onThemeChanged});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<ShapeCalculatorBloc>(),
      child: ShapeCalculatorView(onThemeChanged: onThemeChanged),
    );
  }
}

class ShapeCalculatorView extends StatelessWidget {
  final VoidCallback onThemeChanged;

  const ShapeCalculatorView({super.key, required this.onThemeChanged});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: ShapeCalculatorAppBar(onThemeChanged: onThemeChanged),
        drawer: AppDrawer(
          currentRoute: AppRoute.shapeCalculator,
          onNavigateToCalculator: () {
            Navigator.pop(context);
          },
          onNavigateToConverter: () async {
            // Pop the drawer first
            Navigator.pop(context);
            // Navigate to Unit Converter
            await Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) =>
                    UnitConverterScreen(onThemeChanged: onThemeChanged),
              ),
            );
          },
        ),
        body: const ShapeCalculatorBody(),
      ),
    );
  }
}
