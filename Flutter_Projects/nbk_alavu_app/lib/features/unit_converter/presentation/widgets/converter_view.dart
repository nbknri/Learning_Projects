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
  final double? initialValue;
  final Function(double? value, T unit)? onValuesChanged;

  const ConverterView({
    super.key,
    required this.units,
    required this.getDisplayName,
    required this.getSymbol,
    required this.convert,
    required this.initialUnit,
    this.initialValue,
    this.onValuesChanged,
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
    if (widget.initialValue != null) {
      _currentValue = widget.initialValue;
      // Format initial value similarly to how we format results (remove trailing zeros)
      String text = widget.initialValue.toString();
      if (text.endsWith('.0')) {
        text = text.substring(0, text.length - 2);
      }
      _inputController.text = text;
    }
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
      widget.onValuesChanged?.call(null, _fromUnit);
      return;
    }

    if (!InputParser.isValidInput(text)) {
      setState(() {
        _currentValue = null;
      });
      widget.onValuesChanged?.call(null, _fromUnit);
      return;
    }

    final evaluatedString = InputParser.evaluate(text);
    if (evaluatedString.isEmpty) {
      setState(() {
        _currentValue = null;
      });
      widget.onValuesChanged?.call(null, _fromUnit);
      return;
    }

    final value = double.tryParse(evaluatedString);
    if (value == null || value == 0) {
      setState(() {
        _currentValue = null;
      });
      widget.onValuesChanged?.call(null, _fromUnit);
      return;
    }

    setState(() {
      _currentValue = value;
    });
    widget.onValuesChanged?.call(value, _fromUnit);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isLandscape =
            constraints.maxWidth > 600 ||
            MediaQuery.of(context).orientation == Orientation.landscape;

        if (isLandscape) {
          // Landscape Layout (Split View)
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left Pane: Input Section
              Expanded(
                flex: 4,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: _buildInputSection(),
                ),
              ),
              const VerticalDivider(width: 1),
              // Right Pane: Results List
              Expanded(
                flex: 6,
                child: _buildResultsSection(),
              ),
            ],
          );
        } else {
          // Portrait Layout
          return Column(
            children: [
              // Input Section
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: _buildInputSection(),
              ),

              const Divider(),

              // Results List
              Expanded(
                child: _buildResultsSection(),
              ),
            ],
          );
        }
      },
    );
  }

  Widget _buildInputSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        UnitSelector<T>(
          selectedUnit: _fromUnit,
          units: widget.units,
          getDisplayName: widget.getDisplayName,
          onChanged: (T? newValue) {
            FocusManager.instance.primaryFocus?.unfocus();
            if (newValue != null) {
              setState(() {
                _fromUnit = newValue;
                _onInputChanged(); // Adding unit change re-triggers value notification
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
                  },
                )
              : null,
        ),
      ],
    );
  }

  Widget _buildResultsSection() {
    if (_currentValue == null) {
      return Center(
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
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      itemCount: widget.units.length,
      itemBuilder: (context, index) {
        final targetUnit = widget.units[index];
        String resultText = "-";
        final converted = widget.convert(
          _currentValue!,
          _fromUnit,
          targetUnit,
        );

        resultText = converted.toStringAsFixed(4);
        if (resultText.contains('.')) {
          resultText = resultText.replaceAll(RegExp(r'0*$'), '');
          if (resultText.endsWith('.')) {
            resultText = resultText.substring(
              0,
              resultText.length - 1,
            );
          }
        }

        return ConversionResultCard(
          resultText: resultText,
          unitDisplayName: widget.getDisplayName(targetUnit),
          unitSymbol: widget.getSymbol(targetUnit),
          isSelected: targetUnit == _fromUnit,
        );
      },
    );

  }
}


