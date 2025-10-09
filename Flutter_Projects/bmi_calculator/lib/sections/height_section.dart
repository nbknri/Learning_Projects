import 'package:bmi_calculator/variables/global_variables.dart';
import 'package:flutter/material.dart';

class HeightSection extends StatelessWidget {
  final int heightCount;
  final void Function(double) heightFunction;

  const HeightSection({
    super.key,
    required this.heightCount,
    required this.heightFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Container(
            padding: EdgeInsets.only(top: 14),
            child: Text("HEIGHT", style: labelStyle),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(heightCount.toString(), style: countLabelStyle),
            Text("cm", style: labelStyle),
          ],
        ),
        SliderTheme(
          data: SliderThemeData(
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
          ),
          child: Slider(
            value: heightCount.toDouble(),
            min: 54.0,
            max: 272.0,
            activeColor: activeColor,
            inactiveColor: inactiveColor,
            thumbColor: bottumButtonAndSliderThumbColor,
            onChanged: heightFunction,
            overlayColor: WidgetStatePropertyAll(
              bottumButtonAndSliderThumbColor.withValues(alpha: 0.2),
            ),
          ),
        ),
      ],
    );
  }
}
