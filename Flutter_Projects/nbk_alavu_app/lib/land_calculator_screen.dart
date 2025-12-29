import 'dart:math';

import 'package:flutter/material.dart';


// ത്രികോണത്തിന്റെ ഡാറ്റ സൂക്ഷിക്കാനുള്ള മോഡൽ
class TriangleModel {
  final double sideA;
  final double sideB;
  final double sideC;
  final double areaInSqMeter;

  TriangleModel({
    required this.sideA,
    required this.sideB,
    required this.sideC,
    required this.areaInSqMeter,
  });
}

class LandCalculatorScreen extends StatefulWidget {
  final VoidCallback onThemeChanged;
  final bool isDarkMode;

  const LandCalculatorScreen({
    super.key,
    required this.onThemeChanged,
    required this.isDarkMode,
  });

  @override
  State<LandCalculatorScreen> createState() => _LandCalculatorScreenState();
}

class _LandCalculatorScreenState extends State<LandCalculatorScreen> {
  // കണ്ട്രോളറുകൾ
  final TextEditingController _sideAController = TextEditingController();
  final TextEditingController _sideBController = TextEditingController();
  final TextEditingController _sideCController = TextEditingController();

  // ലിസ്റ്റും യൂണിറ്റും
  List<TriangleModel> triangles = [];
  String selectedUnit = 'Meters'; // Default unit

  // ആകെ വിസ്തീർണ്ണം (ചതുരശ്ര മീറ്ററിൽ)
  double totalAreaSqM = 0.0;

  // ത്രികോണം ആഡ് ചെയ്യാനുള്ള ഫംഗ്ഷൻ
  void _addTriangle() {
    double? a = double.tryParse(_sideAController.text);
    double? b = double.tryParse(_sideBController.text);
    double? c = double.tryParse(_sideCController.text);

    if (a == null || b == null || c == null) {
      _showSnackBar("ദയവായി എല്ലാ അളവുകളും കൃത്യമായി നൽകുക.");
      return;
    }

    // അളവുകൾ Feet ലാണെങ്കിൽ മീറ്ററിലേക്ക് മാറ്റുന്നു
    // 1 Foot = 0.3048 Meter
    double aM = selectedUnit == 'Feet' ? a * 0.3048 : a;
    double bM = selectedUnit == 'Feet' ? b * 0.3048 : b;
    double cM = selectedUnit == 'Feet' ? c * 0.3048 : c;

    // ത്രികോണം സാധ്യമാണോ എന്ന് നോക്കുന്നു (Sum of two sides > third side)
    if (aM + bM <= cM || aM + cM <= bM || bM + cM <= aM) {
      _showSnackBar("ഈ അളവുകൾ വെച്ച് ഒരു ത്രികോണം നിർമ്മിക്കാൻ കഴിയില്ല.");
      return;
    }

    // Heron's Formula
    double s = (aM + bM + cM) / 2;
    double area = sqrt(s * (s - aM) * (s - bM) * (s - cM));

    setState(() {
      triangles.add(
        TriangleModel(
          sideA: a, // Display original input value
          sideB: b,
          sideC: c,
          areaInSqMeter: area,
        ),
      );
      _calculateTotal();

      // Clear inputs
      _sideAController.clear();
      _sideBController.clear();
      _sideCController.clear();
    });
  }

  // ആകെ തുക കണക്കാക്കാൻ
  void _calculateTotal() {
    double tempTotal = 0.0;
    for (var t in triangles) {
      tempTotal += t.areaInSqMeter;
    }
    totalAreaSqM = tempTotal;
  }

  // ഓരോ യൂണിറ്റിലേക്കും മാറ്റാൻ
  String get formattedResult {
    double cents = totalAreaSqM / 40.4686; // 1 Cent = ~40.47 Sq meter
    double ares = totalAreaSqM / 100; // 1 Are = 100 Sq meter
    double hectares = totalAreaSqM / 10000; // 1 Hectare = 10000 Sq meter

    return "Cents: ${cents.toStringAsFixed(2)}\n"
        "Ares: ${ares.toStringAsFixed(3)}\n"
        "Hectares: ${hectares.toStringAsFixed(4)}";
  }

  void _deleteTriangle(int index) {
    setState(() {
      triangles.removeAt(index);
      _calculateTotal();
    });
  }

  void _showSnackBar(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NBK Alavu App"),
        actions: [
          IconButton(
            onPressed: widget.onThemeChanged,
            icon: Icon(widget.isDarkMode ? Icons.light_mode : Icons.dark_mode),
          ),
        ],
      ),
      body: Column(
        children: [
          // --- Input Section ---
          Card(
            margin: const EdgeInsets.all(10),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Unit: "),
                      DropdownButton<String>(
                        value: selectedUnit,
                        items: ['Meters', 'Feet'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            selectedUnit = newValue!;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: _buildInput(_sideAController, "Side A")),
                      const SizedBox(width: 10),
                      Expanded(child: _buildInput(_sideBController, "Side B")),
                      const SizedBox(width: 10),
                      Expanded(child: _buildInput(_sideCController, "Side C")),
                    ],
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton.icon(
                    onPressed: _addTriangle,
                    icon: const Icon(Icons.add),
                    label: const Text("Add Triangle"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // --- List of Added Triangles ---
          Expanded(
            child: ListView.builder(
              itemCount: triangles.length,
              itemBuilder: (context, index) {
                final t = triangles[index];
                return ListTile(
                  leading: CircleAvatar(child: Text("${index + 1}")),
                  title: Text("Sides: ${t.sideA}, ${t.sideB}, ${t.sideC}"),
                  subtitle: Text(
                    "Area: ${t.areaInSqMeter.toStringAsFixed(2)} Sq.m",
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () => _deleteTriangle(index),
                  ),
                );
              },
            ),
          ),

          // --- Total Result Section ---
          Container(
            width: double.infinity,
            color: Theme.of(context).colorScheme.primaryContainer,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total Area Breakdown:",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(0.8),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  formattedResult,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInput(TextEditingController controller, String label) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      ),
    );
  }
}
