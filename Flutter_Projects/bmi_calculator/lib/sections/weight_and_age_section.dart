import 'package:bmi_calculator/variables/global_variables.dart';
import 'package:flutter/material.dart';

class WeightAndAgeSection extends StatelessWidget {
  final String titleText;
  final String countNumber;
  final void Function(bool, String) increaseOrDecreaseFuntion;

  const WeightAndAgeSection({
    super.key,
    required this.titleText,
    required this.countNumber,
    required this.increaseOrDecreaseFuntion,
  });

  @override
  Widget build(BuildContext context) {
    // Roundable Button
    Widget roundIconButton({required IconData buttonIcon}) {
      return RawMaterialButton(
        onPressed: () => increaseOrDecreaseFuntion(
          buttonIcon == Icons.add ? true : false,
          titleText == "WEIGHT" ? "WEIGHT" : "AGE",
        ),
        elevation: 0.0,
        shape: CircleBorder(),
        fillColor: Color(0xFF1C2033),
        constraints: BoxConstraints.tightFor(width: 60, height: 60),
        child: Icon(buttonIcon, size: 40),
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(titleText, style: labelStyle),
        Text(countNumber, style: countLabelStyle),
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              roundIconButton(buttonIcon: Icons.remove),
              roundIconButton(buttonIcon: Icons.add),
            ],
          ),
        ),
      ],
    );
  }
}
