import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nbk_alavu_app/core/di/injection.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shape.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_bloc.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_event.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_state.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/added_shapes_list.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/result_section.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/shape_input_section.dart';

class ShapeCalculatorScreen extends StatefulWidget {
  final VoidCallback onThemeChanged;

  const ShapeCalculatorScreen({super.key, required this.onThemeChanged});

  @override
  State<ShapeCalculatorScreen> createState() => _ShapeCalculatorScreenState();
}

class _ShapeCalculatorScreenState extends State<ShapeCalculatorScreen> {
  
  void _showSnackBar(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    
    return BlocProvider(
      create: (context) => getIt<ShapeCalculatorBloc>(),
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset: false, // Prevent overflow when keyboard opens; Input stays fixed at top.
          appBar: AppBar(
            title: const Text(
              "NBK Alavu App",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            actions: [
              BlocBuilder<ShapeCalculatorBloc, ShapeCalculatorState>(
                builder: (context, state) {
                  return IconButton(
                    onPressed: () {
                      if (state.shapes.isNotEmpty) {
                        showDialog(
                          context: context,
                          builder: (dialogContext) => AlertDialog(
                            title: const Text("Clear All?"),
                            content: const Text(
                              "Are you sure you want to delete all computations?",
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(dialogContext),
                                child: const Text("Cancel"),
                              ),
                              TextButton(
                                onPressed: () {
                                  context.read<ShapeCalculatorBloc>().add(
                                    const ShapeCalculatorEvent.clearAll(),
                                  );
                                  Navigator.pop(dialogContext);
                                },
                                child: const Text(
                                  "Delete",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                    icon: const Icon(Icons.delete_sweep),
                  );
                },
              ),
              IconButton(
                onPressed: widget.onThemeChanged,
                icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
              ),
            ],
          ),
          body: SafeArea(
            child: BlocConsumer<ShapeCalculatorBloc, ShapeCalculatorState>(
              listener: (context, state) {
                if (state.status == ShapeCalculatorStatus.failure &&
                    state.errorMessage != null) {
                  _showSnackBar(context, state.errorMessage!);
                }
              },
              builder: (context, state) {
                return Column(
                  children: [
                    // --- Shape Type Selector (Fixed) ---
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SegmentedButton<ShapeType>(
                        segments: const [
                          ButtonSegment(value: ShapeType.triangle, label: Text('\nTriangle'), icon: Icon(Icons.change_history)),
                          ButtonSegment(value: ShapeType.rectangle, label: Text('Rect'), icon: Icon(Icons.crop_landscape)),
                          ButtonSegment(value: ShapeType.square, label: Text('Square'), icon: Icon(Icons.crop_square)),
                          ButtonSegment(value: ShapeType.circle, label: Text('Circle'), icon: Icon(Icons.circle_outlined)),
                          ButtonSegment(value: ShapeType.irregularQuadrilateral, label: Text('Land'), icon: Icon(Icons.terrain)),
                        ],
                        selected: {state.selectedShapeType},
                        onSelectionChanged: (Set<ShapeType> newSelection) {
                          context.read<ShapeCalculatorBloc>().add(
                                ShapeCalculatorEvent.selectShapeType(newSelection.first),
                              );
                        },
                        showSelectedIcon: false,
                        style: ButtonStyle(
                           visualDensity: VisualDensity.compact,
                           tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),
                    ),
                    
                    // --- Input Section (Fixed) ---
                    ShapeInputSection(
                      selectedShapeType: state.selectedShapeType,
                      selectedUnit: state.selectedUnit,
                      onUnitChanged: (val) {
                        if (val != null) {
                          context.read<ShapeCalculatorBloc>().add(
                            ShapeCalculatorEvent.setUnit(val),
                          );
                        }
                      },
                      onAddShape: (inputs) {
                         context.read<ShapeCalculatorBloc>().add(
                            ShapeCalculatorEvent.addShape(inputs: inputs),
                          );
                      },
                      onClear: () {
                         FocusManager.instance.primaryFocus?.unfocus();
                      },
                    ),
                    
                    const Divider(),
                    
                    if (state.shapes.isNotEmpty)
                         const Padding(
                           padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                           child: Align(
                             alignment: Alignment.centerLeft,
                             child: Text("Added Shapes:", style: TextStyle(fontWeight: FontWeight.bold))
                           ),
                         ),

                    // --- List of Added Shapes (Scrollable) ---
                    Expanded(
                      child: AddedShapesList(
                        shapes: state.shapes,
                        deleteShape: (index) {
                          context.read<ShapeCalculatorBloc>().add(
                            ShapeCalculatorEvent.deleteShape(index),
                          );
                        },
                      ),
                    ),

                    // --- Total Result Section (Fixed Button) ---
                    state.shapes.isNotEmpty
                        ? ResultSection(
                            formattedResult: state.formattedResult)
                        : const SizedBox.shrink(),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
