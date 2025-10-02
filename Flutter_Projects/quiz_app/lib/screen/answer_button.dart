import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.buttonColor,
    required this.buttonLabel,
    required this.buttonAction,
  });

  final Color buttonColor;
  final String buttonLabel;
  final Function(bool) buttonAction;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed:()=> buttonAction(
          buttonLabel == "ശരി" ? true: false,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(5),
          ),
          shadowColor: Colors.grey,
          elevation: 5,
        ),
        child: Text(
          buttonLabel,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
