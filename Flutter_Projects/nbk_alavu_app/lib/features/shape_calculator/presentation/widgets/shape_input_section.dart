import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      // Allow user to use +, -, *, /
      // Simple parse: split by operators. For now, strictly supporting summation as requested "20 + 0.85"
      // If we want full eval, we can proper parse.
      // Let's implement Summation for now as it's the primary use case for "segments".
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
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 const Text("Unit: ", style: TextStyle( fontSize: 16)),
                 DropdownButton<String>(
                   value: widget.selectedUnit,
                   items: ['Meters', 'Feet'].map((String value) {
                     return DropdownMenuItem<String>(
                       value: value,
                       child: Text(value),
                     );
                   }).toList(),
                   onChanged: widget.onUnitChanged,
                 ),
               ],
            ),
            const SizedBox(height: 10),
            
            // Dynamic Inputs
            ..._buildInputs(),
            
            const SizedBox(height: 20),
            
            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: _submit,
                  icon: const Icon(Icons.add),
                  label: const Text("Add"),
                ),
                ElevatedButton.icon( 
                  onPressed: () {
                    widget.onClear(); 
                    _clearInputs();
                  },
                  icon: const Icon(Icons.clear_all),
                  label: const Text("Clear"),
                  style: ElevatedButton.styleFrom( 
                     backgroundColor: Colors.redAccent,
                     foregroundColor: Colors.white,
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
      // Change Keyboard Type to allow explicit "+" or expression characters?
      // TextInputType.numberWithOptions(decimal: true) usually allows digits and dots.
      // For "+", we might need TextInputType.datetime or TextInputType.text if .number is strict on some keyboards.
      // But typically we want the number pad. 
      // User requested "20.45 + 0.85". 
      // If we relax the regex, we still need the keyboard to show '+'.
      // On iOS number pad has no +. On Android it might.
      // Safe bet: TextInputType.phone or text? Or just loose regex.
      // Let's try TextInputType.datetime which often has punctuation, or just visiblePassword/text.
      // But for calculator, we really want numbers.
      // Let's stick to number but allow + in helper.
      keyboardType: TextInputType.datetime, // Often has numbers + symbols
      textInputAction: textInputAction,
      onSubmitted: (_) {
        if (textInputAction == TextInputAction.done) {
          _submit();
        }
      },
      inputFormatters: [
        // Allow digits, dots, spaces, plus signs
        FilteringTextInputFormatter.allow(RegExp(r'[0-9\.\+\s]')),
      ],
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }
}
