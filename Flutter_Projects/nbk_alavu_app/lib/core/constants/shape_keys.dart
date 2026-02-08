/// Constants for shape dimension keys used across the shape calculator feature.
/// This eliminates magic strings and provides a single source of truth.
class ShapeKeys {
  // Private constructor to prevent instantiation
  ShapeKeys._();

  /// Key for side A (used in Triangle and Irregular Quadrilateral - North)
  static const String sideA = 'sideA';

  /// Key for side B (used in Triangle and Irregular Quadrilateral - East)
  static const String sideB = 'sideB';

  /// Key for side C (used in Triangle and Irregular Quadrilateral - South)
  static const String sideC = 'sideC';

  /// Key for side D (used in Irregular Quadrilateral - West)
  static const String sideD = 'sideD';

  /// Key for length (used in Rectangle)
  static const String length = 'length';

  /// Key for width (used in Rectangle)
  static const String width = 'width';

  /// Key for side (used in Square)
  static const String side = 'side';


}
