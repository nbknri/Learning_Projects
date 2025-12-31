import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nbk_alavu_app/core/di/injection.dart';
import 'package:nbk_alavu_app/features/triangle_calculator/presentation/bloc/triangle_calculator_bloc.dart';
import 'package:nbk_alavu_app/features/triangle_calculator/presentation/bloc/triangle_calculator_event.dart';
import 'package:nbk_alavu_app/features/triangle_calculator/presentation/bloc/triangle_calculator_state.dart';
import 'package:nbk_alavu_app/features/triangle_calculator/presentation/widgets/added_triangles_list.dart';
import 'package:nbk_alavu_app/features/triangle_calculator/presentation/widgets/input_section.dart';
import 'package:nbk_alavu_app/features/triangle_calculator/presentation/widgets/result_section.dart';

class TriangleCalculatorScreen extends StatefulWidget {
  final VoidCallback onThemeChanged;

  const TriangleCalculatorScreen({super.key, required this.onThemeChanged});

  @override
  State<TriangleCalculatorScreen> createState() => _TriangleCalculatorScreenState();
}

class _TriangleCalculatorScreenState extends State<TriangleCalculatorScreen> {
  // Text Controllers
  final TextEditingController _sideAController = TextEditingController();
  final TextEditingController _sideBController = TextEditingController();
  final TextEditingController _sideCController = TextEditingController();

  @override
  void dispose() {
    _sideAController.dispose();
    _sideBController.dispose();
    _sideCController.dispose();
    super.dispose();
  }

  // Add Triangle Function
  void _addTriangle(BuildContext context) {
    context.read<TriangleCalculatorBloc>().add(
      TriangleCalculatorEvent.addTriangle(
        sideA: _sideAController.text,
        sideB: _sideBController.text,
        sideC: _sideCController.text,
      ),
    );
    // Note: Clearing text field is handled in BlocListener now
  }

  // Clear TextField Function
  void _clearTextField() {
    FocusManager.instance.primaryFocus?.unfocus();
    _sideAController.clear();
    _sideBController.clear();
    _sideCController.clear();
  }

  void _showSnackBar(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    
    return BlocProvider(
      create: (context) => getIt<TriangleCalculatorBloc>(),
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "NBK Alavu App",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            actions: [
              BlocBuilder<TriangleCalculatorBloc, TriangleCalculatorState>(
                builder: (context, state) {
                  return IconButton(
                    onPressed: () {
                      if (state.triangles.isNotEmpty) {
                        showDialog(
                          context: context,
                          builder: (dialogContext) => AlertDialog(
                            title: const Text("Clear All?"),
                            content: const Text(
                              "Are you sure you want to delete all triangles?",
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(dialogContext),
                                child: const Text("Cancel"),
                              ),
                              TextButton(
                                onPressed: () {
                                  context.read<TriangleCalculatorBloc>().add(
                                    const TriangleCalculatorEvent.clearAll(),
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
            child: BlocConsumer<TriangleCalculatorBloc, TriangleCalculatorState>(
              listener: (context, state) {
                    if (state.status == TriangleCalculatorStatus.failure &&
                        state.errorMessage != null) {
                  _showSnackBar(context, state.errorMessage!);
                    } else if (state.status ==
                        TriangleCalculatorStatus.success) {
                      _clearTextField();
                }
              },
              builder: (context, state) {
                return Column(
                  children: [
                    // --- Input Section ---
                    InputSection(
                      sideAController: _sideAController,
                      sideBController: _sideBController,
                      sideCController: _sideCController,
                      selectedUnit: state.selectedUnit,
                      onUnitChanged: (val) {
                        if (val != null) {
                          context.read<TriangleCalculatorBloc>().add(
                            TriangleCalculatorEvent.setUnit(val),
                          );
                        }
                      },
                      addTriangleFunction: () {
                            _addTriangle(context);
                      },
                      clearTextFieldFunction: _clearTextField,
                    ),

                    // --- List of Added Triangles ---
                    Expanded(
                      child: AddedTrianglesList(
                        triangles: state.triangles,
                        deleteTriangle: (index) {
                          context.read<TriangleCalculatorBloc>().add(
                            TriangleCalculatorEvent.deleteTriangle(index),
                          );
                        },
                      ),
                    ),

                    // --- Total Result Section ---
                    state.triangles.isNotEmpty
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

