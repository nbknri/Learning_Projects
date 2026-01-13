import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/core/presentation/widgets/dimension_input_field.dart';
import 'package:nbk_alavu_app/core/utils/input_parser.dart';
import 'package:nbk_alavu_app/features/unit_converter/presentation/widgets/conversion_result_card.dart';
import 'package:nbk_alavu_app/features/unit_converter/presentation/widgets/unit_selector.dart';

class ConverterView<T> extends StatefulWidget {
  final List<T> units;
  final String Function(T) getDisplayName;
  final String Function(T) getSymbol;
  final double Function(double, T, T) convert;
  final T initialUnit;

  const ConverterView({
    super.key,
    required this.units,
    required this.getDisplayName,
    required this.getSymbol,
    required this.convert,
    required this.initialUnit,
  });

  @override
  State<ConverterView<T>> createState() => _ConverterViewState<T>();
}

class _ConverterViewState<T> extends State<ConverterView<T>> {
  late T _fromUnit;
  final TextEditingController _inputController = TextEditingController();
  double? _currentValue;

  @override
  void initState() {
    super.initState();
    _fromUnit = widget.initialUnit;
    _inputController.addListener(_onInputChanged);
  }

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }

  void _onInputChanged() {
    final text = _inputController.text;
    if (text.isEmpty) {
      setState(() {
        _currentValue = null;
      });
      return;
    }

    if (!InputParser.isValidInput(text)) {
      setState(() {
        _currentValue = null;
      });
      return;
    }

    final evaluatedString = InputParser.evaluate(text);
    if (evaluatedString.isEmpty) {
      setState(() {
        _currentValue = null;
      });
      return;
    }

    final value = double.tryParse(evaluatedString);
    if (value == null || value == 0) {
      setState(() {
        _currentValue = null;
      });
      return;
    }

    setState(() {
      _currentValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Input Section
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // From Unit Selector (Right Aligned)
              UnitSelector<T>(
                selectedUnit: _fromUnit,
                units: widget.units,
                getDisplayName: widget.getDisplayName,
                onChanged: (T? newValue) {
                  FocusManager.instance.primaryFocus?.unfocus();
                  if (newValue != null) {
                    setState(() {
                      _fromUnit = newValue;
                      _onInputChanged();
                    });
                  }
                },
              ),

              DimensionInputField(
                controller: _inputController,
                label: "Value",
                textInputAction: TextInputAction.done,
                onSubmitted: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                suffixIcon: _inputController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          _inputController.clear();
                          // Listener will handle state update
                        },
                      )
                    : null,
              ),
            ],
          ),
        ),

        const Divider(),

        // Results List
        // Results List or Empty State
        if (_currentValue != null)
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              itemCount: widget.units.length,
              itemBuilder: (context, index) {
                final targetUnit = widget.units[index];

                String resultText = "-";
                final converted = widget.convert(
                  _currentValue!,
                  _fromUnit,
                  targetUnit,
                );
                
                // Format decimal: remove trailing zeros
                resultText = converted.toStringAsFixed(5);
                if (resultText.contains('.')) {
                  resultText = resultText.replaceAll(RegExp(r'0*$'), '');
                  if (resultText.endsWith('.')) {
                    resultText = resultText.substring(0, resultText.length - 1);
                  }
                }

                return ConversionResultCard(
                  resultText: resultText,
                  unitDisplayName: widget.getDisplayName(targetUnit),
                  unitSymbol: widget.getSymbol(targetUnit),
                  isSelected: targetUnit == _fromUnit,
                );
              },
            ),
          )
        else
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.touch_app_outlined,
                    size: 64,
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Please enter a value to convert",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}

