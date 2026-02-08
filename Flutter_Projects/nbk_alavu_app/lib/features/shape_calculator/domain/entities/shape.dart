

enum ShapeType {
  triangle,
  rectangle,
  square,
  irregularQuadrilateral;
}


abstract class Shape {
  final String id;
  final ShapeType type;
  final String unit;

  Shape({required this.id, required this.type, required this.unit});

  double get areaInSqMeter;
  Map<String, double> get dimensions;

  // For display purposes, to show what the dimensions are (e.g., "Side A: 10")
  Map<String, String> get formattedDimensions;
}
