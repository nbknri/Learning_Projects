import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/core/theme/app_text_style.dart';
import 'package:nbk_alavu_app/core/theme/app_theme.dart';

class UnitSelector<T> extends StatelessWidget {
  final T selectedUnit;
  final List<T> units;
  final String Function(T) getDisplayName;
  final ValueChanged<T?> onChanged;

  const UnitSelector({
    super.key,
    required this.selectedUnit,
    required this.units,
    required this.getDisplayName,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 4,
      ),
      decoration: Theme.of(context).unitContainerDecoration(context),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Unit: ", style: Theme.of(context).unitLabelStyle),
          DropdownButton<T>(
            value: selectedUnit,
            items: units.map((T unit) {
              return DropdownMenuItem<T>(
                value: unit,
                child: Text(getDisplayName(unit)),
              );
            }).toList(),
            onChanged: onChanged,
            underline: const SizedBox(),
            isDense: true,
            style: Theme.of(context).unitDropdownStyle,
          ),
        ],
      ),
    );
  }
}
