import 'package:flutter/material.dart';

// AppBar
final appBar = AppBar(
  leading: Icon(Icons.menu),
  title: Text("BMI CALCULATOR", style: TextStyle(fontWeight: FontWeight.bold)),
  centerTitle: true,
);

// UI Colors
const mainBgColor = Color(0xFF090C22);
const containerBgColor = Color(0xFF101427);
const genderContainerColor = Color(0xFF1D1F33);
const bottumButtonAndSliderThumbColor = Color(0xFFEA1556);
const bottumButtonSize = 80.0;
const activeColor = Colors.white;
const inactiveColor = Color(0xff868995);

// Label Styles
const labelStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: inactiveColor,
);
const countLabelStyle = TextStyle(fontSize: 60, fontWeight: FontWeight.bold);
