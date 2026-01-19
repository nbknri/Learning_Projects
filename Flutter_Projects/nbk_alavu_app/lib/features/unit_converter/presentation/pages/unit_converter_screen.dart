import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/core/presentation/widgets/app_drawer.dart';
import 'package:nbk_alavu_app/core/theme/app_text_style.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/pages/shape_calculator_screen.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/theme_toggle_button.dart';
import 'package:nbk_alavu_app/features/unit_converter/domain/entities/area_unit.dart';
import 'package:nbk_alavu_app/features/unit_converter/domain/entities/unit_type.dart';
import 'package:nbk_alavu_app/features/unit_converter/domain/logic/area_converter_logic.dart';
import 'package:nbk_alavu_app/features/unit_converter/domain/logic/unit_converter_logic.dart';
import 'package:nbk_alavu_app/features/unit_converter/presentation/widgets/converter_view.dart';

class UnitConverterScreen extends StatefulWidget {
  final VoidCallback onThemeChanged;

  const UnitConverterScreen({super.key, required this.onThemeChanged});

  @override
  State<UnitConverterScreen> createState() => _UnitConverterScreenState();
}

class _UnitConverterScreenState extends State<UnitConverterScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            title: Text(
              "Unit Converter",
              style: Theme.of(context).appBarTitleStyle,
            ),
            actions: [
              ThemeToggleButton(
                onPressed: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  widget.onThemeChanged();
                },
              ),
            ],
            bottom: const TabBar(
              tabs: [
                Tab(text: "Area"),
                Tab(text: "Length"),
              ],
            ),
          ),
          drawer: AppDrawer(
            currentRoute: AppRoute.unitConverter,
            onNavigateToCalculator: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => ShapeCalculatorScreen(
                    onThemeChanged: widget.onThemeChanged,
                  ),
                ),
              );
            },
            onNavigateToConverter: () {
              Navigator.pop(context); // Close drawer
            },
          ),
          body: TabBarView(
            children: [
              // Area Converter
              ConverterView<AreaUnit>(
                units: AreaUnit.values,
                getDisplayName: (unit) => unit.displayName,
                getSymbol: (unit) => unit.symbol,
                convert: (val, from, to) =>
                    AreaConverter.convert(val, from, to),
                initialUnit: AreaUnit.cents,
              ),

              // Length Converter
              ConverterView<UnitType>(
                units: UnitType.values,
                getDisplayName: (unit) => unit.displayName,
                getSymbol: (unit) => unit.symbol,
                convert: (val, from, to) => UnitConverter.convert(val, from, to),
                initialUnit: UnitType.meters,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

