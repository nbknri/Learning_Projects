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
  int? _editingIndex;
  Shape? _pendingEditShape;
  final GlobalKey<ShapeInputSectionState> _inputSectionKey = GlobalKey();

  @override
  void dispose() {
    _snackBarTimer?.cancel();
    super.dispose();
  }

  void _handleEdit(int index, Shape shape) {
    setState(() {
      _editingIndex = index;
    });
    FocusManager.instance.primaryFocus?.unfocus();

    final currentType = context
        .read<ShapeCalculatorBloc>()
        .state
        .selectedShapeType;

    context.read<ShapeCalculatorBloc>().add(
      ShapeCalculatorEvent.setUnit(shape.unit),
    );

    if (currentType == shape.type) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _inputSectionKey.currentState?.populateFields(shape);
      });
    } else {
      setState(() {
        _pendingEditShape = shape;
      });
      context.read<ShapeCalculatorBloc>().add(
        ShapeCalculatorEvent.selectShapeType(shape.type),
      );
    }
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
          } else if (state.status == ShapeCalculatorStatus.success) {
            if (_editingIndex != null) {
              setState(() {
                _editingIndex = null;
              });
            }
          }

          // Handle pending edit shape population after type switch
          if (_pendingEditShape != null &&
              state.selectedShapeType == _pendingEditShape!.type) {
            final shapeToPopulate = _pendingEditShape!;
            setState(() {
              _pendingEditShape = null;
            });
            WidgetsBinding.instance.addPostFrameCallback((_) {
              _inputSectionKey.currentState?.populateFields(shapeToPopulate);
            });
          }
        },
        builder: (context, state) {
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
              // Dashboard Header - hide on small screens when keyboard is open
              if (state.shapes.isNotEmpty && !shouldHideDashboard)
                DashboardHeader(totalAreaSqM: state.totalAreaSqM),

              // Shape Type Selector
              ShapeTypeSelector(state: state),

              // Input Section - Inline to preserve context
              ShapeInputSection(
                key: _inputSectionKey,
                isEditing: _editingIndex != null,
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
                  if (_editingIndex != null) {
                    context.read<ShapeCalculatorBloc>().add(
                      ShapeCalculatorEvent.updateShape(
                        index: _editingIndex!,
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
                  setState(() {
                    _editingIndex = null;
                  });
                  FocusManager.instance.primaryFocus?.unfocus();
                },
              ),

              const Divider(),

              // Added Shapes Header
              if (state.shapes.isNotEmpty) const AddedShapesHeader(),

              // List of Added Shapes
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
                    // Cancel any existing timer
                    _snackBarTimer?.cancel();

                    // Reset edit mode if active
                    if (_editingIndex != null) {
                      setState(() {
                        _editingIndex = null;
                        _pendingEditShape = null;
                      });
                      _inputSectionKey.currentState?.clearFields();
                    }

                    // Delete the shape first
                    context.read<ShapeCalculatorBloc>().add(
                      ShapeCalculatorEvent.deleteShape(index),
                    );

                    // Show SnackBar
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
                        duration: const Duration(
                          days: 365,
                        ), // Set very long duration
                        behavior: SnackBarBehavior.floating,
                        margin: const EdgeInsets.all(8),
                      ),
                    );

                    // Manually dismiss after 3 seconds
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
        },
      ),
    );
  }
}
