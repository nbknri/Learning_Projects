import 'package:flutter/material.dart';

Widget roundIconButton({
  required String titleText,
  required IconData buttonIcon,
  required void Function(bool, String) rounButtonFuntion,
}) {
  return RawMaterialButton(
    onPressed: () => rounButtonFuntion(
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
