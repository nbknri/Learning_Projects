import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/core/theme/app_text_style.dart';
import 'package:nbk_alavu_app/core/theme/app_theme.dart';

class ShapeUnitSelector extends StatelessWidget {
  final String selectedUnit;
  final ValueChanged<String?> onUnitChanged;

  const ShapeUnitSelector({
    super.key,
    required this.selectedUnit,
    required this.onUnitChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.only(right: 4),
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 4,
        ),
        decoration: Theme.of(context).unitContainerDecoration(context),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Unit: ",
              style: Theme.of(context).unitLabelStyle,
            ),
            DropdownButton<String>(
              value: selectedUnit,
              items: ['Meters', 'Feet', '6 Feet']
                  .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  })
                  .toList(),
              onChanged: onUnitChanged,
              underline: const SizedBox(),
              isDense: true,
              style: Theme.of(context).unitDropdownStyle,
            ),
          ],
        ),
      ),
    );
  }
}
