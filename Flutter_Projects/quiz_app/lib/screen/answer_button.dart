import 'package:flutter/material.dart';

class AnswerButton extends StatefulWidget {
  const AnswerButton({
    super.key,
    required this.buttonColor,
    required this.buttonLabel,
    required this.buttonClicked,
  });

  final Color buttonColor;
  final String buttonLabel;
  final Function() buttonClicked;

  @override
  State<AnswerButton> createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: widget.buttonClicked,
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(5),
          ),
          shadowColor: Colors.grey,
          elevation: 5,
        ),
        child: Text(
          widget.buttonLabel,
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
