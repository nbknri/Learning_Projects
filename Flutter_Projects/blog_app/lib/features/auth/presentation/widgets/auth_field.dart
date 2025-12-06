import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  const AuthField({
    super.key, 
    required this.hintText, 
    required this.controller,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(hintText: hintText),
        validator: (value) {
          if (value!.isEmpty) {
            return '$hintText is missing';
          }
          return null;
        },
      ),
    );
  }
}
