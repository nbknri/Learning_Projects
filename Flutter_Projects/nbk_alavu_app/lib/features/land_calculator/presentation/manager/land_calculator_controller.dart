import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/core/utils/format_utils.dart';
import 'package:nbk_alavu_app/features/land_calculator/domain/entities/triangle_model.dart';

class LandCalculatorController extends ChangeNotifier {
  List<TriangleModel> triangles = [];
  String selectedUnit = 'Meters'; // Default Unit
  double totalAreaSqM = 0.0;

  // Function to add triangles
  String? addTriangle(String sideA, String sideB, String sideC) {
    double? a = double.tryParse(sideA);
    double? b = double.tryParse(sideB);
    double? c = double.tryParse(sideC);

    if (a == null || b == null || c == null) {
      return "ദയവായി എല്ലാ അളവുകളും കൃത്യമായി നൽകുക.";
    }

    // If the measurements are in feet, they are converted to meters.
    // 1 Foot = 0.3048 Meter
    double aM = selectedUnit == 'Feet' ? a * 0.3048 : a;
    double bM = selectedUnit == 'Feet' ? b * 0.3048 : b;
    double cM = selectedUnit == 'Feet' ? c * 0.3048 : c;

    // Checking if the triangle is possible (Sum of two sides > third side)
    if (aM + bM <= cM || aM + cM <= bM || bM + cM <= aM) {
      return "ഈ അളവുകൾ വെച്ച് ഒരു ത്രികോണം നിർമ്മിക്കാൻ കഴിയില്ല.";
    }

    // Heron's Formula
    double s = (aM + bM + cM) / 2;
    double area = sqrt(s * (s - aM) * (s - bM) * (s - cM));

    triangles.add(
      TriangleModel(
        sideA: a, // Display original input value
        sideB: b,
        sideC: c,
        areaInSqMeter: area,
      ),
    );
    _calculateTotal();
    notifyListeners();
    return null; // Success
  }

  // To calculate the total area
  void _calculateTotal() {
    double tempTotal = 0.0;
    for (var t in triangles) {
      tempTotal += t.areaInSqMeter;
    }
    totalAreaSqM = tempTotal;
  }

  void deleteTriangle(int index) {
    triangles.removeAt(index);
    _calculateTotal();
    notifyListeners();
  }

  void clearAll() {
    triangles.clear();
    _calculateTotal();
    notifyListeners();
  }

  void setUnit(String newUnit) {
    selectedUnit = newUnit;
    notifyListeners();
  }

  // To convert to each unit
  String get formattedResult {
    double cents = totalAreaSqM / 40.4686; // 1 Cent = ~40.47 Sq meter
    double ares = totalAreaSqM / 100; // 1 Are = 100 Sq meter

    return "Cents: ${FormatUtils.formatArea(cents)}\n"
        "Ares: ${FormatUtils.formatArea(ares)}\n"
        "Sq. Meter: ${FormatUtils.formatArea(totalAreaSqM)}";
  }
}
