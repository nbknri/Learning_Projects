import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nbk_alavu_app/core/constants/app_strings.dart';
import 'package:nbk_alavu_app/core/constants/shape_keys.dart';
import 'package:nbk_alavu_app/core/presentation/widgets/dimension_input_field.dart';
import 'package:nbk_alavu_app/core/theme/app_color.dart';
import 'package:nbk_alavu_app/core/theme/app_text_style.dart';
import 'package:nbk_alavu_app/core/utils/input_parser.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shape.dart'; // For ShapeType
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_bloc.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_state.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/input_row.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/shape_unit_selector.dart';

class ShapeInputSection extends StatefulWidget {
  final ShapeType selectedShapeType;
  final String selectedUnit;
  final Function(String?) onUnitChanged;
  final Function(Map<String, String>) onAddShape;
  final VoidCallback onClear;
  final bool isEditing;

  const ShapeInputSection({
    super.key,
    required this.selectedShapeType,
    required this.selectedUnit,
    required this.onUnitChanged,
    required this.onAddShape,
    required this.onClear,
    this.isEditing = false,
  });

  @override
  State<ShapeInputSection> createState() => ShapeInputSectionState();
}

class ShapeInputSectionState extends State<ShapeInputSection> {
  final _sideAController = TextEditingController(); // Triangle / Side A (North)
  final _sideBController = TextEditingController(); // Triangle / Side B (East)
  final _sideCController = TextEditingController(); // Triangle / Side C (South)
  final _sideDController = TextEditingController(); // Side D (West) (Irregular)
  
  final _lengthController = TextEditingController(); // Rectangle
  final _widthController = TextEditingController(); // Rectangle
  
  final _sideController = TextEditingController(); // Square
  
  final _radiusController = TextEditingController(); // Circle

  @override
  void dispose() {
    _sideAController.dispose();
    _sideBController.dispose();
    _sideCController.dispose();
    _sideDController.dispose();
    _lengthController.dispose();
    _widthController.dispose();
    _sideController.dispose();
    _radiusController.dispose();
    super.dispose();
  }
  
  @override
  void didUpdateWidget(ShapeInputSection oldWidget) {
    if (oldWidget.selectedShapeType != widget.selectedShapeType) {
      _clearInputs(); // Clear on type change
    }
    super.didUpdateWidget(oldWidget);
  }

  void _clearInputs() {
    _sideAController.clear();
    _sideBController.clear();
    _sideCController.clear();
    _sideDController.clear();
    _lengthController.clear();
    _widthController.clear();
    _sideController.clear();
    _radiusController.clear();
  }

  void populateFields(Shape shape) {
    // Clear first to be safe
    _clearInputs();

    final dimensions = shape.dimensions;

    String format(double? value) {
      if (value == null) return '';
      // If integer value, remove decimal
      if (value == value.truncate()) {
        return value.truncate().toString();
      }
      return value.toString();
    }

    switch (shape.type) {
      case ShapeType.triangle:
        _sideAController.text = format(dimensions[ShapeKeys.sideA]);
        _sideBController.text = format(dimensions[ShapeKeys.sideB]);
        _sideCController.text = format(dimensions[ShapeKeys.sideC]);
        break;
      case ShapeType.rectangle:
        _lengthController.text = format(dimensions[ShapeKeys.length]);
        _widthController.text = format(dimensions[ShapeKeys.width]);
        break;
      case ShapeType.square:
        _sideController.text = format(dimensions[ShapeKeys.side]);
        break;
      case ShapeType.circle:
        _radiusController.text = format(dimensions[ShapeKeys.radius]);
        break;
      case ShapeType.irregularQuadrilateral:
        _sideAController.text = format(dimensions[ShapeKeys.sideA]);
        _sideBController.text = format(dimensions[ShapeKeys.sideB]);
        _sideCController.text = format(dimensions[ShapeKeys.sideC]);
        _sideDController.text = format(dimensions[ShapeKeys.sideD]);
        break;
    }
  }

  void _submit() {
     FocusManager.instance.primaryFocus?.unfocus();

     Map<String, String> inputs = {};
     
    // Define required controllers for each shape type
    List<TextEditingController> requiredControllers = [];
    switch (widget.selectedShapeType) {
      case ShapeType.triangle:
        requiredControllers = [
          _sideAController,
          _sideBController,
          _sideCController,
        ];
        break;
      case ShapeType.rectangle:
        requiredControllers = [_lengthController, _widthController];
        break;
      case ShapeType.square:
        requiredControllers = [_sideController];
        break;
      case ShapeType.circle:
        requiredControllers = [_radiusController];
        break;
      case ShapeType.irregularQuadrilateral:
        requiredControllers = [
          _sideAController,
          _sideBController,
          _sideCController,
          _sideDController,
        ];
        break;
    }

    // Check if any required field is empty
    for (final controller in requiredControllers) {
      if (controller.text.trim().isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(AppStrings.emptyInputError),
            duration: Duration(seconds: 2),
            behavior: SnackBarBehavior.floating,
          ),
        );
        return;
      }
    }

    // Validate input format
    for (final controller in requiredControllers) {
      if (!InputParser.isValidInput(controller.text)) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(AppStrings.invalidInputFormat),
            duration: Duration(seconds: 2),
          ),
        );
        return;
      }
    }
     
     // Evaluate math expressions before sending
    String resolve(TextEditingController c) => InputParser.evaluate(c.text);

     switch (widget.selectedShapeType) {
       case ShapeType.triangle:
        inputs[ShapeKeys.sideA] = resolve(_sideAController);
        inputs[ShapeKeys.sideB] = resolve(_sideBController);
        inputs[ShapeKeys.sideC] = resolve(_sideCController);
         break;
       case ShapeType.rectangle:
        inputs[ShapeKeys.length] = resolve(_lengthController);
        inputs[ShapeKeys.width] = resolve(_widthController);
         break;
       case ShapeType.square:
        inputs[ShapeKeys.side] = resolve(_sideController);
         break;
       case ShapeType.circle:
        inputs[ShapeKeys.radius] = resolve(_radiusController);
         break;
       case ShapeType.irregularQuadrilateral:
        inputs[ShapeKeys.sideA] = resolve(_sideAController); // North
        inputs[ShapeKeys.sideB] = resolve(_sideBController); // East
        inputs[ShapeKeys.sideC] = resolve(_sideCController); // South
        inputs[ShapeKeys.sideD] = resolve(_sideDController); // West
         break;
     }

    // Strict check: No value can be 0
    final hasZeroValue = inputs.values.any((value) {
       final numValue = double.tryParse(value) ?? 0;
      return numValue == 0;
     });

    if (hasZeroValue) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(AppStrings.zeroInputError),
          duration: Duration(seconds: 2),
          behavior: SnackBarBehavior.floating,
        ),
      );
      return;
    }
     
    // Validated: Not empty, Valid Format, Not Zero.
    widget.onAddShape(inputs);
  }
  
  void clearFields() {
    _clearInputs();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ShapeCalculatorBloc, ShapeCalculatorState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status == ShapeCalculatorStatus.success) {
           _clearInputs();
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            // Unit Selector
            ShapeUnitSelector(
              selectedUnit: widget.selectedUnit,
              onUnitChanged: (value) {
                if (value != null) {
                  widget.onUnitChanged(value);
                }
              },
            ),
            const SizedBox(height: 10),
            
            // Dynamic Inputs
            ..._buildInputs(),
            
            const SizedBox(height: 16),
            
            // Action Buttons
            Row(
              children: [
                if (widget.isEditing) ...[
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        _clearInputs(); // Clear fields specifically
                        widget.onClear(); // Notify parent to reset state
                      },
                      icon: const Icon(Icons.close),
                      label: const Text('Cancel'),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        side: BorderSide(color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                ],
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: _submit,
                    icon: Icon(
                      widget.isEditing
                          ? Icons.update
                          : Icons.add_circle_outline,
                      size: 24,
                    ),
                    label: Text(
                      widget.isEditing ? 'Update' : AppStrings.addMeasurement,
                      style: Theme.of(context).addButtonTextStyle,
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


  List<Widget> _buildInputs() {
    switch (widget.selectedShapeType) {
      case ShapeType.triangle:
        return [
          InputRow(
            children: [
            DimensionInputField(
              controller: _sideAController,
              label: "Side A",
              textInputAction: TextInputAction.next,
              onSubmitted: _submit,
            ),
            DimensionInputField(
              controller: _sideBController,
              label: "Side B",
              textInputAction: TextInputAction.next,
              onSubmitted: _submit,
            ),
            DimensionInputField(
              controller: _sideCController,
              label: "Side C",
              textInputAction: TextInputAction.done,
              onSubmitted: _submit,
            ),
          ]),
        ];
      case ShapeType.rectangle:
        return [
          InputRow(
            children: [
            DimensionInputField(
              controller: _lengthController,
              label: "Length",
              textInputAction: TextInputAction.next,
              onSubmitted: _submit,
            ),
            DimensionInputField(
              controller: _widthController,
              label: "Width",
              textInputAction: TextInputAction.done,
              onSubmitted: _submit,
            ),
          ]),
        ];
      case ShapeType.square:
        return [
           // Full width for single input
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: DimensionInputField(
              controller: _sideController,
              label: "Side Length",
              textInputAction: TextInputAction.done,
              onSubmitted: _submit,
            ),
           ),
        ];
      case ShapeType.circle:
        return [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 4.0), 
            child: DimensionInputField(
              controller: _radiusController,
              label: "Radius",
              textInputAction: TextInputAction.done,
              onSubmitted: _submit,
            ),
           ),
        ];
      case ShapeType.irregularQuadrilateral:
        return [
          InputRow(
            children: [
            DimensionInputField(
              controller: _sideAController,
              label: "North",
              textInputAction: TextInputAction.next,
              onSubmitted: _submit,
            ),
            DimensionInputField(
              controller: _sideBController,
              label: "East",
              textInputAction: TextInputAction.next,
              onSubmitted: _submit,
            ),
          ]),
          const SizedBox(height: 10),
          InputRow(
            children: [
            DimensionInputField(
              controller: _sideCController,
              label: "South",
              textInputAction: TextInputAction.next,
              onSubmitted: _submit,
            ),
            DimensionInputField(
              controller: _sideDController,
              label: "West",
              textInputAction: TextInputAction.done,
              onSubmitted: _submit,
            ),
          ]),
          const SizedBox(height: 12),
          Text(
            AppStrings.landPlotAccuracyWarning,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: AppColor.warning,
              fontStyle: FontStyle.italic,
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
        ];
    }
  }
}
