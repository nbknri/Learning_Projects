import 'package:bmi_calculator/widgets_and_variables/global_variables.dart';
import 'package:flutter/material.dart';

const leftRightMargin = 15.0;

class ContainerCard extends StatelessWidget {
  final Widget containerChild;
  final double marginLeft;
  final double marginRight;
  final Color bgColor;

  const ContainerCard({
    super.key,
    required this.containerChild,
    this.marginLeft = leftRightMargin,
    this.marginRight = leftRightMargin,
    this.bgColor = containerBgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: marginLeft,
        right: marginRight,
        top: 10.0,
        bottom: 10.0,
      ),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: containerChild,
    );
  }
}
