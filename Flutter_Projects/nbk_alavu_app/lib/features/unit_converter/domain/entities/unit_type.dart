import 'package:nbk_alavu_app/core/constants/app_strings.dart';

enum UnitType {
  meters(AppStrings.meters, 'm'),
  kilometers(AppStrings.kilometers, 'km'),
  centimeters(AppStrings.centimeters, 'cm'),
  millimeters(AppStrings.millimeters, 'mm'),
  feet(AppStrings.feet, 'ft'),
  inches(AppStrings.inches, 'in'),
  yards(AppStrings.yards, 'yd');

  final String displayName;
  final String symbol;

  const UnitType(this.displayName, this.symbol);
}
