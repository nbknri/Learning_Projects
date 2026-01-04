import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nbk_alavu_app/core/constants/app_strings.dart';
import 'package:nbk_alavu_app/core/di/injection.dart';
import 'package:nbk_alavu_app/core/theme/app_text_style.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shape.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_bloc.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_event.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/bloc/shape_calculator_state.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/added_shapes_list.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/clear_all_button.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/dashboard_header.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/shape_input_section.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/shape_type_chip.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/theme_toggle_button.dart';

class ShapeCalculatorScreen extends StatefulWidget {
  final VoidCallback onThemeChanged;

  const ShapeCalculatorScreen({super.key, required this.onThemeChanged});

  @override
  State<ShapeCalculatorScreen> createState() => _ShapeCalculatorScreenState();
}

class _ShapeCalculatorScreenState extends State<ShapeCalculatorScreen> {
  String? _lastShownError;
  DateTime? _lastErrorTime;

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
    return BlocProvider(
      create: (context) => getIt<ShapeCalculatorBloc>(),
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: _buildAppBar(),
          body: _buildBody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: Text(
        AppStrings.appTitle,
        style: Theme.of(context).appBarTitleStyle,
      ),
      actions: [
        const ClearAllButton(),
        ThemeToggleButton(onPressed: widget.onThemeChanged),
      ],
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: BlocConsumer<ShapeCalculatorBloc, ShapeCalculatorState>(
        listener: (context, state) {
          if (state.status == ShapeCalculatorStatus.failure &&
              state.errorMessage != null) {
            _showSnackBar(context, state.errorMessage!);
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
              _buildShapeTypeSelector(state),

              // Input Section - Inline to preserve context
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

              // Added Shapes Header
              if (state.shapes.isNotEmpty) _buildAddedShapesHeader(),

              // List of Added Shapes
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
    );
  }

  Widget _buildShapeTypeSelector(ShapeCalculatorState state) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          ShapeTypeChip(
            shapeType: ShapeType.triangle,
            label: AppStrings.triangle,
            icon: Icons.change_history,
            isSelected: state.selectedShapeType == ShapeType.triangle,
          ),
          const SizedBox(width: 8),
          ShapeTypeChip(
            shapeType: ShapeType.rectangle,
            label: AppStrings.rectangle,
            icon: Icons.crop_landscape,
            isSelected: state.selectedShapeType == ShapeType.rectangle,
          ),
          const SizedBox(width: 8),
          ShapeTypeChip(
            shapeType: ShapeType.square,
            label: AppStrings.square,
            icon: Icons.crop_square,
            isSelected: state.selectedShapeType == ShapeType.square,
          ),
          const SizedBox(width: 8),
          ShapeTypeChip(
            shapeType: ShapeType.circle,
            label: AppStrings.circle,
            icon: Icons.circle_outlined,
            isSelected: state.selectedShapeType == ShapeType.circle,
          ),
          const SizedBox(width: 8),
          ShapeTypeChip(
            shapeType: ShapeType.irregularQuadrilateral,
            label: AppStrings.landPlot,
            icon: Icons.terrain,
            isSelected:
                state.selectedShapeType == ShapeType.irregularQuadrilateral,
          ),
        ],
      ),
    );
  }

  Widget _buildAddedShapesHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          AppStrings.addedShapes,
          style: Theme.of(context).sectionHeaderStyle,
        ),
      ),
    );
  }
}
