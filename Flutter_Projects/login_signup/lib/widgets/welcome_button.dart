import 'package:flutter/material.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({
    super.key,
    required this.buttonText,
    required this.buttonColor,
    required this.textColor, required this.onTap,
  });

  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final Widget onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => onTap),
      ),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(30)),
        ),
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
