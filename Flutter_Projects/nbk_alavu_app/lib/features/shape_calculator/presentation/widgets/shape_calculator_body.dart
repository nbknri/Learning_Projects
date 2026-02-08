import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nbk_alavu_app/core/theme/app_text_style.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shape.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_bloc.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_event.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_state.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/extensions/shape_type_extension.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/added_shapes_header.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/added_shapes_list.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/dashboard_header.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/shape_input_section.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/shape_type_selector.dart';

class ShapeCalculatorBody extends StatefulWidget {
  const ShapeCalculatorBody({super.key});

  @override
  State<ShapeCalculatorBody> createState() => _ShapeCalculatorBodyState();
}

class _ShapeCalculatorBodyState extends State<ShapeCalculatorBody> {
  String? _lastShownError;
  DateTime? _lastErrorTime;
  Timer? _snackBarTimer;
  final GlobalKey<ShapeInputSectionState> _inputSectionKey = GlobalKey();

  @override
  void dispose() {
    _snackBarTimer?.cancel();
    super.dispose();
  }

  void _handleEdit(int index, Shape shape) {
    FocusManager.instance.primaryFocus?.unfocus();

    context.read<ShapeCalculatorBloc>().add(
      ShapeCalculatorEvent.startEdit(index: index, shape: shape),
    );
  }

  void _showSnackBar(BuildContext context, String msg) {
    // Prevent showing the same error within 2 seconds
    final now = DateTime.now();
    if (_lastShownError == msg &&
        _lastErrorTime != null &&
        now.difference(_lastErrorTime!) < const Duration(seconds: 2)) {
      return; // Skip showing duplicate error
    }

    _lastShownError = msg;
    _lastErrorTime = now;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<ShapeCalculatorBloc, ShapeCalculatorState>(
        listener: (context, state) {
          if (state.status == ShapeCalculatorStatus.failure &&
              state.errorMessage != null) {
            _showSnackBar(context, state.errorMessage!);
          }

          // Handle pending edit shape population
          if (state.pendingEditShape != null) {
            final shapeToPopulate = state.pendingEditShape!;
            WidgetsBinding.instance.addPostFrameCallback((_) {
              _inputSectionKey.currentState?.populateFields(shapeToPopulate);
            });
          }
        },
        builder: (context, state) {
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
                    // Left Pane: Inputs & Controls
                    Expanded(
                      flex: 4, // 40% width
                      child: SingleChildScrollView(
                        child: _buildInputContent(state),
                      ),
                    ),
                    const VerticalDivider(width: 1),
                    // Right Pane: List
                    Expanded(
                      flex: 6, // 60% width
                      child: _buildShapesListContent(state),
                    ),
                  ],
                );
              } else {
                // Portrait Layout (Original)
                // Detect if keyboard is open
                final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
                final isKeyboardOpen = keyboardHeight > 0;

                // Check if screen is small (height < 600)
                final screenHeight = MediaQuery.of(context).size.height;
                final isSmallScreen = screenHeight < 600;

                // Hide dashboard only on small screens when keyboard is open
                final shouldHideDashboard = isSmallScreen && isKeyboardOpen;

                return Column(
                  children: [
                    _buildInputContent(
                      state,
                      hideDashboard: shouldHideDashboard,
                    ),

                    const Divider(),

                    // List of Added Shapes
                    Expanded(child: _buildShapesListContent(state)),
                  ],
                );
              }
            },
          );
        },
      ),
    );
  }

  Widget _buildInputContent(
    ShapeCalculatorState state, {
    bool hideDashboard = false,
  }) {
    return Column(
      children: [
        if (state.shapes.isNotEmpty && !hideDashboard)
          DashboardHeader(totalAreaSqM: state.totalAreaSqM),
        ShapeTypeSelector(state: state),
        ShapeInputSection(
          key: _inputSectionKey,
          isEditing: state.editingIndex != null,
          selectedShapeType: state.selectedShapeType,
          selectedUnit: state.selectedUnit,
          onUnitChanged: (val) {
            FocusManager.instance.primaryFocus?.unfocus();
            if (val != null) {
              context.read<ShapeCalculatorBloc>().add(
                ShapeCalculatorEvent.setUnit(val),
              );
            }
          },
          onAddShape: (inputs) {
            if (state.editingIndex != null) {
              context.read<ShapeCalculatorBloc>().add(
                ShapeCalculatorEvent.updateShape(
                  index: state.editingIndex!,
                  inputs: inputs,
                  type: state.selectedShapeType,
                  unit: state.selectedUnit,
                ),
              );
            } else {
              context.read<ShapeCalculatorBloc>().add(
                ShapeCalculatorEvent.addShape(inputs: inputs),
              );
            }
          },
          onClear: () {
            context.read<ShapeCalculatorBloc>().add(
              const ShapeCalculatorEvent.cancelEdit(),
            );
            FocusManager.instance.primaryFocus?.unfocus();
          },
        ),
      ],
    );
  }

  Widget _buildShapesListContent(ShapeCalculatorState state) {
    return Column(
      children: [
        if (state.shapes.isNotEmpty) const AddedShapesHeader(),
        Expanded(
          child: AddedShapesList(
            shapes: state.shapes,
            onEdit: _handleEdit,
            deleteShape: (index) {
              FocusManager.instance.primaryFocus?.unfocus();
              context.read<ShapeCalculatorBloc>().add(
                ShapeCalculatorEvent.deleteShape(index),
              );
            },
            onDeleteWithUndo: (index, shape) {
              FocusManager.instance.primaryFocus?.unfocus();
              _snackBarTimer?.cancel();

              if (state.editingIndex != null) {
                // Clear the input fields if an item is deleted while editing
                // The BLoC handles clearing the editing state
                _inputSectionKey.currentState?.clearFields();
              }

              context.read<ShapeCalculatorBloc>().add(
                ShapeCalculatorEvent.deleteShape(index),
              );

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Deleted ${shape.type.displayName}',
                    style: AppTextStyle.snackBarText(),
                  ),
                  action: SnackBarAction(
                    label: 'UNDO',
                    onPressed: () {
                      _snackBarTimer?.cancel();
                      context.read<ShapeCalculatorBloc>().add(
                        ShapeCalculatorEvent.insertShape(
                          index: index,
                          shape: shape,
                        ),
                      );
                    },
                  ),
                  duration: const Duration(days: 365),
                  behavior: SnackBarBehavior.floating,
                  margin: const EdgeInsets.all(8),
                ),
              );

              _snackBarTimer = Timer(const Duration(seconds: 3), () {
                if (mounted) {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                }
              });
            },
          ),
        ),
      ],
    );
  }
}
