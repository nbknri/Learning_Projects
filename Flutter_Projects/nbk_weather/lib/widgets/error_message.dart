import 'package:flutter/material.dart';

void showErrorMessage(BuildContext context, String errorMessage){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        errorMessage,
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
          fontFamily: "Poppins Regular",
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.red,
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(10),
      duration: const Duration(seconds: 3),
    ),
  );
}
