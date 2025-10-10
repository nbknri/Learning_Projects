import 'package:bmi_calculator/widgets_and_variables/global_variables.dart';
import 'package:flutter/material.dart';

class BottumButtonSection extends StatelessWidget {
  final String buttonLabel;
  final void Function() buttonFunction;

  const BottumButtonSection({
    super.key,
    required this.buttonLabel,
    required this.buttonFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      color: bottumButtonAndSliderThumbColor,
      width: double.infinity,
      height: bottumButtonSize,
      child: TextButton(
        onPressed: buttonFunction,
        child: Text(
          buttonLabel,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
