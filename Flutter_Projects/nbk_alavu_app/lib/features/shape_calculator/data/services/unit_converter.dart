/// Service for converting between different units of measurement
class UnitConverter {
  /// Convert feet to meters
  static double feetToMeters(double feet) => feet * 0.3048;

  /// Convert 6-feet units to meters (1 unit = 6 feet = 1.8288 meters)
  static double sixFeetToMeters(double units) => units * 1.8288;

  /// Convert value to meters based on unit type
  static double toMeters(double value, String unit) {
    switch (unit) {
      case 'Feet':
        return feetToMeters(value);
      case '6 Feet':
        return sixFeetToMeters(value);
      case 'Meters':
      default:
        return value;
    }
  }
}
