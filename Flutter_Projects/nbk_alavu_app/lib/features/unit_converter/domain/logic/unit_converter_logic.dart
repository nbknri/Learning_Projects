import 'package:nbk_alavu_app/features/unit_converter/domain/entities/unit_type.dart';

class UnitConverter {
  static double convert(double value, UnitType from, UnitType to) {
    // specific conversion logic
    // Convert everything to meters first, then to target
    double valueInMeters = _toMeters(value, from);
    return _fromMeters(valueInMeters, to);
  }

  static double _toMeters(double value, UnitType unit) {
    switch (unit) {
      case UnitType.meters:
        return value;
      case UnitType.kilometers:
        return value * 1000;
      case UnitType.centimeters:
        return value / 100;
      case UnitType.millimeters:
        return value / 1000;
      case UnitType.feet:
        return value * 0.3048;
      case UnitType.inches:
        return value * 0.0254;
      case UnitType.yards:
        return value * 0.9144;
    }
  }

  static double _fromMeters(double value, UnitType unit) {
    switch (unit) {
      case UnitType.meters:
        return value;
      case UnitType.kilometers:
        return value / 1000;
      case UnitType.centimeters:
        return value * 100;
      case UnitType.millimeters:
        return value * 1000;
      case UnitType.feet:
        return value / 0.3048;
      case UnitType.inches:
        return value / 0.0254;
      case UnitType.yards:
        return value / 0.9144;
    }
  }
}
