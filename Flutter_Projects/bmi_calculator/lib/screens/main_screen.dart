import 'package:bmi_calculator/sections/bottum_button_section.dart';
import 'package:bmi_calculator/sections/container_card.dart';
import 'package:bmi_calculator/sections/gender_section.dart';
import 'package:bmi_calculator/sections/height_section.dart';
import 'package:bmi_calculator/sections/weight_and_age_section.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/variables/global_variables.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // Local variables
  Color _genderActiveColor = activeColor;
  Color _genderInactiveColor = inactiveColor;
  int _heightCount = 183;
  int _weightCount = 73;
  int _ageCount = 19;

  // Gender Funtion
  void _genderSelection(bool genderType) {
    setState(() {
      if (genderType) {
        _genderActiveColor = activeColor;
        _genderInactiveColor = inactiveColor;
      } else {
        _genderActiveColor = inactiveColor;
        _genderInactiveColor = activeColor;
      }
    });
  }

  // Height Funtion
  void _heightSelection(double newHeight) {
    setState(() {
      _heightCount = newHeight.round();
    });
  }

  // Weight and Age Funtion
  void _weightAndAgeFuntion(bool sectionName, String sectionType) {
    setState(() {
      if (sectionType == "WEIGHT") {
        if (sectionName) {
          if (_weightCount < 650) {
            _weightCount++;
          }
        } else {
          if (_weightCount > 1) {
            _weightCount--;
          }
        }
      } else {
        if (sectionName) {
          if (_ageCount < 125) {
            _ageCount++;
          }
        } else {
          if (_ageCount > 1) {
            _ageCount--;
          }
        }
      }
    });
  }

  void _bottumFuntion(bool calculateButton) {
    if (calculateButton) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20.0),
            // Gender UI
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: ContainerCard(
                      marginRight: 4.0,
                      containerChild: GenderSection(
                        bgColor: genderContainerColor,
                        genderIcon: Icons.male_outlined,
                        fgColor: _genderActiveColor,
                        genderText: "MALE",
                        genderFunction: _genderSelection,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ContainerCard(
                      marginLeft: 4.0,
                      containerChild: GenderSection(
                        bgColor: genderContainerColor,
                        genderIcon: Icons.female,
                        genderIconAngel: 0.80,
                        fgColor: _genderInactiveColor,
                        genderText: "FEMALE",
                        genderFunction: _genderSelection,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Height UI
            Expanded(
              flex: 3,
              child: ContainerCard(
                containerChild: HeightSection(
                  heightCount: _heightCount,
                  heightFunction: _heightSelection,
                ),
              ),
            ),

            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    child: ContainerCard(
                      marginRight: 4.0,
                      containerChild: WeightAndAgeSection(
                        increaseOrDecreaseFuntion: _weightAndAgeFuntion,
                        titleText: "WEIGHT",
                        countNumber: _weightCount.toString(),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ContainerCard(
                      marginLeft: 4.0,
                      containerChild: WeightAndAgeSection(
                        increaseOrDecreaseFuntion: _weightAndAgeFuntion,
                        titleText: "AGE",
                        countNumber: _ageCount.toString(),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Bottum Button UI
            BottumButtonSection(
              buttonLabel: "CALCULATE YOUR BMI",
              buttonFunction: _bottumFuntion,
            ),
          ],
        ),
      ),
    );
  }
}
