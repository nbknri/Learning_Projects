import 'package:flutter/material.dart';

class AppTextFiled extends StatelessWidget {
  final String titleText;
  final String hintText;
  final TextEditingController controller;
  final bool isObscureText;
  final TextInputType keyboardType;
  final IconData suffixIcon;
  final VoidCallback? suffixOnPressed;

  const AppTextFiled({
    super.key,
    required this.titleText,
    required this.hintText,
    required this.controller,
    this.isObscureText = false,
    this.keyboardType = TextInputType.text,
    required this.suffixIcon,
    this.suffixOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titleText, style: Theme.of(context).textTheme.titleMedium),
        SizedBox(height: 5),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: TextField(
            controller: controller,
            obscureText: isObscureText,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              hintText: hintText,
              suffixIcon: IconButton(
                onPressed: suffixOnPressed,
                icon: Icon(suffixIcon),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
