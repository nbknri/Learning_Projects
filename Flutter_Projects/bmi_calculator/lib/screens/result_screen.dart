import 'package:bmi_calculator/sections/bottum_button_section.dart';
import 'package:bmi_calculator/widgets_and_variables/container_card_widget.dart';
import 'package:bmi_calculator/widgets_and_variables/global_variables.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.bmiValue,
    required this.bmiStatus,
    required this.bmiInterpretation,
  });

  final String bmiValue;
  final String bmiStatus;
  final String bmiInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Your Result",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: ContainerCard(
                marginLeft: 20.0,
                marginRight: 20.0,
                bgColor: genderOrResultContainerColor,
                containerChild: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        bmiStatus,
                        style: TextStyle(
                          fontSize: 20,
                          color: bmiStatus == "OBESE"
                              ? Colors.red
                              : bmiStatus == "OVERWEIGHT"
                              ? Colors.orange
                              : bmiStatus == "NORMAL"
                              ? Colors.green
                              : Colors.yellow,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        bmiValue,
                        style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Noraml BMI range:",
                            style: TextStyle(
                              fontSize: 20,
                              color: inactiveColor,
                            ),
                          ),
                          Text(
                            "18.5 - 25 kg/m2",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      Text(
                        bmiInterpretation,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            BottumButtonSection(
              buttonLabel: "RE-CALCULATE YOUR BMI",
              buttonFunction: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}
