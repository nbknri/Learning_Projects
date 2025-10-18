import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.horizontalPadding, 
    required this.buttonText,
  });

  final void Function() onPressed;
  final double horizontalPadding;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue.shade800,
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: 15.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: 20,
          fontFamily: "Poppins Regualr",
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
