import 'package:flutter/material.dart';

Widget headerButton({
  required IconData buttonIcon,
  required Color iconColor,
  required String labelText,
  required void Function() buttonAction,
}) {
  return TextButton.icon(
    onPressed: buttonAction,
    label: Text(labelText, style: TextStyle(color: Colors.black, fontSize: 14)),
    icon: Icon(buttonIcon, color: iconColor, size: 20),
  );
}
