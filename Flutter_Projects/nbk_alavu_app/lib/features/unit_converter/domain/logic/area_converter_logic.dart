import 'package:nbk_alavu_app/features/unit_converter/domain/entities/area_unit.dart';

class AreaConverter {
  static double convert(double value, AreaUnit from, AreaUnit to) {
    double valueInSqMeters = _toSqMeters(value, from);
    return _fromSqMeters(valueInSqMeters, to);
  }

  static double _toSqMeters(double value, AreaUnit unit) {
    switch (unit) {
      case AreaUnit.sqMeter:
        return value;
      case AreaUnit.sqFeet:
        return value * 0.092903;
      case AreaUnit.cents:
        return value * 40.4686;
      case AreaUnit.acre:
        return value * 4046.86;
      case AreaUnit.are:
        return value * 100;
      case AreaUnit.hectare:
        return value * 10000;
      case AreaUnit.guntha:
        return value * 101.17;
    }
  }

  static double _fromSqMeters(double value, AreaUnit unit) {
    switch (unit) {
      case AreaUnit.sqMeter:
        return value;
      case AreaUnit.sqFeet:
        return value / 0.092903;
      case AreaUnit.cents:
        return value / 40.4686;
      case AreaUnit.acre:
        return value / 4046.86;
      case AreaUnit.are:
        return value / 100;
      case AreaUnit.hectare:
        return value / 10000;
      case AreaUnit.guntha:
        return value / 101.17;
    }
  }
}
