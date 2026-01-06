import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/core/theme/app_text_style.dart';

/// A simple row displaying a unit conversion label and its value
class ConversionRow extends StatelessWidget {
  final String label;
  final String value;

  const ConversionRow({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: Theme.of(context).dashboardSecondaryLabel),
        Text(value, style: Theme.of(context).dashboardSecondaryValue),
      ],
    );
  }
}
