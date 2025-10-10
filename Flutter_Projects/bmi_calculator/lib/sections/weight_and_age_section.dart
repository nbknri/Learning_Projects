import 'package:bmi_calculator/widgets_and_variables/global_variables.dart';
import 'package:bmi_calculator/widgets_and_variables/round_icon_button_widget.dart';
import 'package:flutter/material.dart';

class WeightAndAgeSection extends StatelessWidget {
  final String titleText;
  final String countNumber;
  final void Function(bool, String) rounButtonFuntion;

  const WeightAndAgeSection({
    super.key,
    required this.titleText,
    required this.countNumber,
    required this.rounButtonFuntion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(titleText, style: labelStyle),
        Text(countNumber, style: countLabelStyle),
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              roundIconButton(
                titleText: titleText,
                buttonIcon: Icons.remove,
                rounButtonFuntion: rounButtonFuntion,
              ),
              roundIconButton(
                titleText: titleText,
                buttonIcon: Icons.add,
                rounButtonFuntion: rounButtonFuntion,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
