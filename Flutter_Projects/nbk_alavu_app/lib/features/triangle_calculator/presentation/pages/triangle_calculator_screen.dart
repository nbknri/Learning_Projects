import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/features/triangle_calculator/presentation/manager/triangle_calculator_controller.dart';
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
  // Controller
  final TriangleCalculatorController _controller = TriangleCalculatorController();

  // Text Controllers
  final TextEditingController _sideAController = TextEditingController();
  final TextEditingController _sideBController = TextEditingController();
  final TextEditingController _sideCController = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    _sideAController.dispose();
    _sideBController.dispose();
    _sideCController.dispose();
    super.dispose();
  }

  // Add Triangle Function
  void _addTriangle() {
    String? error = _controller.addTriangle(
      _sideAController.text,
      _sideBController.text,
      _sideCController.text,
    );

    if (error != null) {
      FocusManager.instance.primaryFocus?.unfocus();
      _showSnackBar(error);
    } else {
      // Clear inputs on success
      _clearTextField();
    }
  }

  // Clear TextField Function
  void _clearTextField() {
    FocusManager.instance.primaryFocus?.unfocus();
    _sideAController.clear();
    _sideBController.clear();
    _sideCController.clear();
  }

  void _showSnackBar(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "NBK Alavu App",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                if (_controller.triangles.isNotEmpty) {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Clear All?"),
                      content: const Text(
                        "Are you sure you want to delete all triangles?",
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Cancel"),
                        ),
                        TextButton(
                          onPressed: () {
                            _controller.clearAll();
                            Navigator.pop(context);
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
            ),
            IconButton(
              onPressed: widget.onThemeChanged,
              icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            ),
          ],
        ),
        body: SafeArea(
          child: ListenableBuilder(
            listenable: _controller,
            builder: (context, child) {
              return Column(
                children: [
                  // --- Input Section ---
                  InputSection(
                    sideAController: _sideAController,
                    sideBController: _sideBController,
                    sideCController: _sideCController,
                    selectedUnit: _controller.selectedUnit,
                    onUnitChanged: (val) {
                      if (val != null) _controller.setUnit(val);
                    },
                    addTriangleFunction: _addTriangle,
                    clearTextFieldFunction: _clearTextField,
                  ),

                  // --- List of Added Triangles ---
                  Expanded(
                    child: AddedTrianglesList(
                      triangles: _controller.triangles,
                      deleteTriangle: _controller.deleteTriangle,
                    ),
                  ),

                  // --- Total Result Section ---
                  _controller.triangles.isNotEmpty
                      ? ResultSection(
                          formattedResult: _controller.formattedResult,
                        )
                      : SizedBox.shrink(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
