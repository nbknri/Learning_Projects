import 'dart:math';

class ResultFunction {
  ResultFunction({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  /// Return BMI Value based on WHO standards
  String calculateBmiValue() {
    _bmi = weight / pow( height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  /// Return BMI status based on WHO standards
  String getStatus() {
    if (_bmi >= 30) {
      return "OBESE";
    } else if (_bmi >= 25) {
      return "OVERWEIGHT";
    } else if (_bmi >= 18.5) {
      return "NORMAL";
    } else {
      return "UNDERWEIGHT";
    }
  }

  /// Return interpretation text
  String getInterpretation() {
    if (_bmi >= 30) {
      return "Your BMI indicates obesity. Try to follow a balanced diet and regular exercise.";
    } else if (_bmi >= 25) {
      return "You have a higher body weight than normal. Regular exercise can help.";
    } else if (_bmi >= 18.5) {
      return "You have a normal body weight. Great job!";
    } else {
      return "You have a lower body weight. Try to eat more nutritious food.";
    }
  }
}
