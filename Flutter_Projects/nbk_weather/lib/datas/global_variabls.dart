import 'package:flutter/material.dart';

const apiKey = "b6cbe4186a0a461ba6e204235251110";
const String apiUrl =
    "https://api.weatherapi.com/v1/current.json?key=$apiKey&q=";
String errorMessage = "";
String weatherMessage = "🌦️🌤️☀️🌧️";

TextStyle appBarTextStyle = TextStyle(fontFamily: "Poppins Bold");

TextStyle titleTextStyle = TextStyle(
  fontSize: 25,
  fontFamily: "Poppins Bold",
  color: Colors.white,
);

TextStyle subTitleTextStyle = TextStyle(
  fontSize: 18,
  fontFamily: "Poppins Regular",
  color: Colors.grey.shade400,
);
