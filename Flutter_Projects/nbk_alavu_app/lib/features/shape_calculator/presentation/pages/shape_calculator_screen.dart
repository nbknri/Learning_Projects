import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nbk_alavu_app/core/di/injection.dart';
import 'package:nbk_alavu_app/core/theme/app_color.dart';
import 'package:nbk_alavu_app/core/theme/app_text_style.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shape.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_bloc.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_event.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_state.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/added_shapes_list.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/dashboard_header.dart';
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
            title: Text(
              "NBK Alavu App",
              style: Theme.of(context).appBarTitleStyle,
            ),
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
                              "Are you sure you want to delete all added measurements?",
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
                                child: Text(
                                  "Delete",
                                  style: Theme.of(context).errorTextStyle,
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                    icon: const Icon(Icons.delete_sweep, color: AppColor.white),
                  );
                },
              ),
              IconButton(
                onPressed: widget.onThemeChanged,
                icon: Icon(
                  isDarkMode ? Icons.light_mode : Icons.dark_mode,
                  color: AppColor.white,
                ),
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
                    // --- Dashboard Header (Fixed) ---
                    if (state.shapes.isNotEmpty)
                      DashboardHeader(totalAreaSqM: state.totalAreaSqM),
                    
                    // --- Shape Type Selector (Fixed) ---
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: Row(
                        children: [
                          _buildShapeChip(
                            context: context,
                            shapeType: ShapeType.triangle,
                            label: 'Triangle',
                            icon: Icons.change_history,
                            isSelected:
                                state.selectedShapeType == ShapeType.triangle,
                          ),
                          const SizedBox(width: 8),
                          _buildShapeChip(
                            context: context,
                            shapeType: ShapeType.rectangle,
                            label: 'Rectangle',
                            icon: Icons.crop_landscape,
                            isSelected:
                                state.selectedShapeType == ShapeType.rectangle,
                          ),
                          const SizedBox(width: 8),
                          _buildShapeChip(
                            context: context,
                            shapeType: ShapeType.square,
                            label: 'Square',
                            icon: Icons.crop_square,
                            isSelected:
                                state.selectedShapeType == ShapeType.square,
                          ),
                          const SizedBox(width: 8),
                          _buildShapeChip(
                            context: context,
                            shapeType: ShapeType.circle,
                            label: 'Circle',
                            icon: Icons.circle_outlined,
                            isSelected:
                                state.selectedShapeType == ShapeType.circle,
                          ),
                          const SizedBox(width: 8),
                          _buildShapeChip(
                            context: context,
                            shapeType: ShapeType.irregularQuadrilateral,
                            label: 'Land Plot',
                            icon: Icons.terrain,
                            isSelected:
                                state.selectedShapeType ==
                                ShapeType.irregularQuadrilateral,
                          ),
                        ],
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
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                           child: Align(
                             alignment: Alignment.centerLeft,
                          child: Text(
                            "Added Shapes:",
                            style: Theme.of(context).sectionHeaderStyle,
                          )
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
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildShapeChip({
    required BuildContext context,
    required ShapeType shapeType,
    required String label,
    required IconData icon,
    required bool isSelected,
  }) {
    return ChoiceChip(
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 18, color: isSelected ? AppColor.white : null),
          const SizedBox(width: 6),
          Text(label),
        ],
      ),
      selected: isSelected,
      onSelected: (selected) {
        if (selected) {
          context.read<ShapeCalculatorBloc>().add(
            ShapeCalculatorEvent.selectShapeType(shapeType),
          );
        }
      },
      selectedColor: AppColor.accent, // Safety Orange
      labelStyle: Theme.of(context).choiceChipLabelStyle(isSelected),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      showCheckmark: false,
    );
  }
}
