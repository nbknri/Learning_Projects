class AppStrings {
  const AppStrings._();

  // App
  static const String appTitle = 'NBK Alavu App';

  // Dialog
  static const String clearAllTitle = 'Clear All?';
  static const String clearAllMessage =
      'Are you sure you want to delete all added measurements?';
  static const String cancel = 'Cancel';
  static const String delete = 'Delete';

  // Shape Calculator
  static const String addedShapes = 'Added Shapes:';
  static const String addMeasurement = 'ADD MEASUREMENT';

  // Shape Types
  static const String triangle = 'Triangle';
  static const String rectangle = 'Rectangle';
  static const String square = 'Square';
  static const String circle = 'Circle';
  static const String irregularPlot = '4-Sided Plot';

  // Unit Types
  static const String meters = 'Meters';
  static const String kilometers = 'Kilometers';
  static const String centimeters = 'Centimeters';
  static const String millimeters = 'Millimeters';
  static const String feet = 'Feet';
  static const String inches = 'Inches';
  static const String yards = 'Yards';

  // Area Units
  static const String cents = 'Cents';
  static const String acre = 'Acre';
  static const String are = 'Are';
  static const String hectare = 'Hectare';
  static const String sqFeet = 'Sq. Feet';
  static const String sqMeter = 'Sq. Meter';
  static const String guntha = 'Guntha';

  // Tooltips
  static const String deleteTooltip = 'Delete';
  static const String clearAllTooltip = 'Clear All';
  static const String toggleThemeTooltip = 'Toggle Theme';

  // Snackbar Messages
  static const String invalidInputFormat =
      'Invalid input format. Please enter single values or use + for addition';
  static const String emptyInputError = 'Please enter all dimensions';
  static const String zeroInputError = 'Dimensions cannot be zero';
  static const String landPlotAccuracyWarning =
      'Note: Calculation using only 4 sides is not 100% accurate. This provides an approximate area only.';

  static String copiedMessage(String label, String value) =>
      '$label copied: $value';
}
