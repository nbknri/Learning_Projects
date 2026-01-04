import 'dart:math';

import 'package:uuid/uuid.dart';

import 'shape.dart';

class Triangle extends Shape {
  final double sideA;
  final double sideB;
  final double sideC;
  final double area;

  Triangle({
    required this.sideA,
    required this.sideB,
    required this.sideC,
    required this.area,
    required String unit,
    String? id,
  }) : super(id: id ?? const Uuid().v4(), type: ShapeType.triangle, unit: unit);

  @override
  double get areaInSqMeter => area;

  @override
  Map<String, double> get dimensions => {
        'sideA': sideA,
        'sideB': sideB,
        'sideC': sideC,
      };

  @override
  Map<String, String> get formattedDimensions => {
        'Side A': sideA.toStringAsFixed(2),
        'Side B': sideB.toStringAsFixed(2),
        'Side C': sideC.toStringAsFixed(2),
      };
}

class Rectangle extends Shape {
  final double length;
  final double width;
  final double? _areaOverride;

  Rectangle({
    required this.length,
    required this.width,
    required String unit,
    String? id,
    double? overrideArea,
  }) : _areaOverride = overrideArea,
       super(
         id: id ?? const Uuid().v4(),
         type: ShapeType.rectangle,
         unit: unit,
       );

  @override
  double get areaInSqMeter => _areaOverride ?? (length * width);

  @override
  Map<String, double> get dimensions => {
        'length': length,
        'width': width,
      };

  @override
  Map<String, String> get formattedDimensions => {
    'Length': length.toStringAsFixed(2),
    'Width': width.toStringAsFixed(2),
  };
}

class Square extends Shape {
  final double side;
  final double? _areaOverride;

  Square({
    required this.side,
    required String unit,
    String? id,
    double? overrideArea,
  }) : _areaOverride = overrideArea,
       super(id: id ?? const Uuid().v4(), type: ShapeType.square, unit: unit);

  @override
  double get areaInSqMeter => _areaOverride ?? (side * side);

  @override
  Map<String, double> get dimensions => {
        'side': side,
      };

  @override
  Map<String, String> get formattedDimensions => {
    'Side': side.toStringAsFixed(2),
  };
}

class Circle extends Shape {
  final double radius;
  final double? _areaOverride;

  Circle({
    required this.radius,
    required String unit,
    String? id,
    double? overrideArea,
  }) : _areaOverride = overrideArea,
       super(id: id ?? const Uuid().v4(), type: ShapeType.circle, unit: unit);

  @override
  double get areaInSqMeter => _areaOverride ?? (pi * radius * radius);

  @override
  Map<String, double> get dimensions => {
        'radius': radius,
      };

  @override
  Map<String, String> get formattedDimensions => {
    'Radius': radius.toStringAsFixed(2),
  };
}

class IrregularQuadrilateral extends Shape {
  final double sideA;
  final double sideB;
  final double sideC;
  final double sideD;
  final double? diagonal;
  final double area;

  IrregularQuadrilateral({
    required this.sideA, // North
    required this.sideB, // East
    required this.sideC, // South
    required this.sideD, // West
    this.diagonal,
    required this.area,
    required String unit,
    String? id,
  }) : super(
         id: id ?? const Uuid().v4(),
         type: ShapeType.irregularQuadrilateral,
         unit: unit,
       );

  @override
  double get areaInSqMeter => area;

  @override
  Map<String, double> get dimensions => {
        'sideA': sideA,
        'sideB': sideB,
        'sideC': sideC,
        'sideD': sideD,
        if (diagonal != null) 'diagonal': diagonal!,
      };

  @override
  Map<String, String> get formattedDimensions => {
        'North': sideA.toStringAsFixed(2),
        'East': sideB.toStringAsFixed(2),
        'South': sideC.toStringAsFixed(2),
        'West': sideD.toStringAsFixed(2),
        if (diagonal != null) 'Diagonal': diagonal!.toStringAsFixed(2),
      };
}
