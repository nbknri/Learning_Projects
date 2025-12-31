import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/core/widgets/app_text_field.dart';
import 'package:nbk_alavu_app/core/widgets/elevated_icon_button.dart';

class InputSection extends StatelessWidget {
  final TextEditingController sideAController;
  final TextEditingController sideBController;
  final TextEditingController sideCController;
  final String selectedUnit;
  final ValueChanged<String?> onUnitChanged;
  final VoidCallback addTriangleFunction;
  final VoidCallback clearTextFieldFunction;

  const InputSection({
    super.key,
    required this.sideAController,
    required this.sideBController,
    required this.sideCController,
    required this.selectedUnit,
    required this.onUnitChanged,
    required this.addTriangleFunction,
    required this.clearTextFieldFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
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
                  onChanged: onUnitChanged,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: AppTextField(
                    controller: sideAController,
                    label: "Side A",
                    textInputAction: TextInputAction.next,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: AppTextField(
                    controller: sideBController,
                    label: "Side B",
                    textInputAction: TextInputAction.next,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: AppTextField(
                    controller: sideCController,
                    label: "Side C",
                    textInputAction: TextInputAction.done,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppElevatedButton(
                  buttonIcon: Icons.add,
                  buttonLabel: "Add Triangle",
                  addTriangleFunction: addTriangleFunction,
                ),
                AppElevatedButton(
                  buttonIcon: Icons.refresh,
                  buttonLabel: "Clear",
                  addTriangleFunction: clearTextFieldFunction,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
