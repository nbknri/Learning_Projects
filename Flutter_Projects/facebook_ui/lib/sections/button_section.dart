import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key, required this.buttonOne, required this.buttonTwo, required this.buttonThree});

  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;
  
  @override
  Widget build(BuildContext context) {
    Widget verticalDivider = VerticalDivider(thickness: 1, color: Colors.grey);

    return Container(
      color: null,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonOne,
          verticalDivider,
          buttonTwo,
          verticalDivider,
          buttonThree,
        ],
      ),
    );
  }
}
