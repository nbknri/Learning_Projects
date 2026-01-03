import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nbk_alavu_app/core/constants/app_strings.dart';
import 'package:nbk_alavu_app/core/theme/app_text_style.dart';
import 'package:nbk_alavu_app/core/theme/app_theme.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shape.dart'; // For ShapeType
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_bloc.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_state.dart';

class ShapeInputSection extends StatefulWidget {
  final ShapeType selectedShapeType;
  final String selectedUnit;
  final Function(String?) onUnitChanged;
  final Function(Map<String, String>) onAddShape;
  final VoidCallback onClear;

  const ShapeInputSection({
    super.key,
    required this.selectedShapeType,
    required this.selectedUnit,
    required this.onUnitChanged,
    required this.onAddShape,
    required this.onClear,
  });

  @override
  State<ShapeInputSection> createState() => _ShapeInputSectionState();
}

class _ShapeInputSectionState extends State<ShapeInputSection> {
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
  
  // Basic math parser to handle "20 + 0.5"
  // Returns string representation of result or original string if fail
  String _evaluate(String input) {
    if (input.isEmpty) return "";
    try {
      if (input.contains('+')) {
         final parts = input.split('+');
         double sum = 0;
         for (var p in parts) {
           sum += double.tryParse(p.trim()) ?? 0;
         }
         if (sum == 0 && parts.every((p) => p.trim().isEmpty)) return "";
         return sum.toString();
      }
      return input; 
    } catch (e) {
      return input;
    }
  }

  void _submit() {
     FocusManager.instance.primaryFocus?.unfocus();

     Map<String, String> inputs = {};
     
     // Evaluate math expressions before sending
     String resolve(TextEditingController c) => _evaluate(c.text);

     switch (widget.selectedShapeType) {
       case ShapeType.triangle:
         inputs['sideA'] = resolve(_sideAController);
         inputs['sideB'] = resolve(_sideBController);
         inputs['sideC'] = resolve(_sideCController);
         break;
       case ShapeType.rectangle:
         inputs['length'] = resolve(_lengthController);
         inputs['width'] = resolve(_widthController);
         break;
       case ShapeType.square:
         inputs['side'] = resolve(_sideController);
         break;
       case ShapeType.circle:
         inputs['radius'] = resolve(_radiusController);
         break;
       case ShapeType.irregularQuadrilateral:
         inputs['sideA'] = resolve(_sideAController); // North
         inputs['sideB'] = resolve(_sideBController); // East
         inputs['sideC'] = resolve(_sideCController); // South
         inputs['sideD'] = resolve(_sideDController); // West
         break;
     }
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
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: const EdgeInsets.only(right: 4),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                decoration: Theme.of(context).unitContainerDecoration(context),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Unit: ",
                      style: Theme.of(context).unitLabelStyle,
                    ),
                    DropdownButton<String>(
                      value: widget.selectedUnit,
                      items:
                          (widget.selectedShapeType == ShapeType.rectangle
                                  ? ['Meters', '6 Feet', 'Feet']
                                  : ['Meters', 'Feet'])
                              .map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              })
                              .toList(),
                      onChanged: widget.onUnitChanged,
                      underline: const SizedBox(),
                      isDense: true,
                      style: Theme.of(context).unitDropdownStyle,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            
            // Dynamic Inputs
            ..._buildInputs(),
            
            const SizedBox(height: 16),
            
            // Add Button - Full Width
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: _submit,
                icon: const Icon(Icons.add_circle_outline, size: 24),
                label: Text(
                  AppStrings.addMeasurement,
                  style: Theme.of(context).addButtonTextStyle,
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildInputs() {
    Widget buildRow(List<Widget> children) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children.map((e) => Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: e,
          ),
        )).toList(),
      );
    }

    switch (widget.selectedShapeType) {
      case ShapeType.triangle:
        return [
          buildRow([
            _buildTextField(_sideAController, "Side A", TextInputAction.next),
            _buildTextField(_sideBController, "Side B", TextInputAction.next),
            _buildTextField(_sideCController, "Side C", TextInputAction.done),
          ]),
        ];
      case ShapeType.rectangle:
        return [
          buildRow([
             _buildTextField(_lengthController, "Length", TextInputAction.next),
             _buildTextField(_widthController, "Width", TextInputAction.done),
          ]),
        ];
      case ShapeType.square:
        return [
           // Full width for single input
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 4.0),
             child: _buildTextField(_sideController, "Side Length", TextInputAction.done)
           ),
        ];
      case ShapeType.circle:
        return [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 4.0), 
             child: _buildTextField(_radiusController, "Radius", TextInputAction.done)
           ),
        ];
      case ShapeType.irregularQuadrilateral:
        return [
          buildRow([
            _buildTextField(_sideAController, "North", TextInputAction.next),
            _buildTextField(_sideBController, "East", TextInputAction.next),
          ]),
          const SizedBox(height: 10),
          buildRow([
             _buildTextField(_sideCController, "South", TextInputAction.next),
             _buildTextField(_sideDController, "West", TextInputAction.done),
          ]),
        ];
    }
  }

  Widget _buildTextField(TextEditingController controller, String label, TextInputAction textInputAction) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.datetime,
      textInputAction: textInputAction,
      onSubmitted: (_) {
        if (textInputAction == TextInputAction.done) {
          _submit();
        }
      },
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[0-9\.+\s]')),
      ],
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }
}
