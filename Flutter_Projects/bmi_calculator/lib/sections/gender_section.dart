import 'package:flutter/material.dart';

class GenderSection extends StatelessWidget {
  final IconData genderIcon;
  final Color fgColor;
  final double genderIconAngel;
  final String genderText;
  final Color bgColor;
  final void Function(bool) genderFunction;

  const GenderSection({
    super.key,
    required this.genderIcon,
    required this.fgColor,
    this.genderIconAngel = 0.0,
    required this.genderText,
    required this.bgColor,
    required this.genderFunction
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() =>  genderFunction(genderText == "MALE" ? true : false),
      child: Container(
        color: bgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Transform.rotate(
              angle: genderIconAngel,
              child: Icon(genderIcon, size: 100, color: fgColor),
            ),
            Text(
              genderText,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: fgColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
