import 'package:flutter_test/flutter_test.dart';
import 'package:nbk_alavu_app/features/shape_calculator/data/factories/shape_factory.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shape.dart';

void main() {
  late ShapeFactory factory;

  setUp(() {
    factory = ShapeFactory();
  });

  group('Shape Factory - All Shapes with All Units', () {
    group('Triangle Tests', () {
      test('Triangle - Meters (3-4-5 right triangle)', () {
        final shape = factory.createShape(
          type: ShapeType.triangle,
          dimensions: {'sideA': 3.0, 'sideB': 4.0, 'sideC': 5.0},
          unit: 'Meters',
        );
        // Expected area using Heron's formula: s = 6, area = sqrt(6*3*2*1) = 6
        expect(shape.areaInSqMeter, closeTo(6.0, 0.01));
      });

      test('Triangle - Feet (3-4-5 right triangle)', () {
        final shape = factory.createShape(
          type: ShapeType.triangle,
          dimensions: {'sideA': 3.0, 'sideB': 4.0, 'sideC': 5.0},
          unit: 'Feet',
        );
        // 3ft = 0.9144m, 4ft = 1.2192m, 5ft = 1.524m
        // s = 1.8288, area = sqrt(1.8288 * 0.9144 * 0.6096 * 0.3048) ≈ 0.557418
        expect(shape.areaInSqMeter, closeTo(0.557418, 0.01));
      });

      test('Triangle - 6 Feet (3-4-5 right triangle)', () {
        final shape = factory.createShape(
          type: ShapeType.triangle,
          dimensions: {'sideA': 3.0, 'sideB': 4.0, 'sideC': 5.0},
          unit: '6 Feet',
        );
        // 3 units = 5.4864m, 4 units = 7.3152m, 5 units = 9.144m
        // s = 10.9728, area ≈ 20.066516
        expect(shape.areaInSqMeter, closeTo(20.066516, 0.01));
      });
    });

    group('Rectangle Tests', () {
      test('Rectangle - Meters (10 × 5)', () {
        final shape = factory.createShape(
          type: ShapeType.rectangle,
          dimensions: {'length': 10.0, 'width': 5.0},
          unit: 'Meters',
        );
        expect(shape.areaInSqMeter, closeTo(50.0, 0.01));
      });

      test('Rectangle - Feet (10 × 5)', () {
        final shape = factory.createShape(
          type: ShapeType.rectangle,
          dimensions: {'length': 10.0, 'width': 5.0},
          unit: 'Feet',
        );
        // 10ft = 3.048m, 5ft = 1.524m
        // Area = 3.048 * 1.524 = 4.645152
        expect(shape.areaInSqMeter, closeTo(4.645152, 0.01));
      });

      test('Rectangle - 6 Feet (10 × 5)', () {
        final shape = factory.createShape(
          type: ShapeType.rectangle,
          dimensions: {'length': 10.0, 'width': 5.0},
          unit: '6 Feet',
        );
        // 10 units = 18.288m, 5 units = 9.144m
        // Area = 18.288 * 9.144 = 167.225472
        expect(shape.areaInSqMeter, closeTo(167.225472, 0.01));
      });
    });

    group('Square Tests', () {
      test('Square - Meters (side = 4)', () {
        final shape = factory.createShape(
          type: ShapeType.square,
          dimensions: {'side': 4.0},
          unit: 'Meters',
        );
        expect(shape.areaInSqMeter, closeTo(16.0, 0.01));
      });

      test('Square - Feet (side = 4)', () {
        final shape = factory.createShape(
          type: ShapeType.square,
          dimensions: {'side': 4.0},
          unit: 'Feet',
        );
        // 4ft = 1.2192m
        // Area = 1.2192² = 1.486413
        expect(shape.areaInSqMeter, closeTo(1.486413, 0.01));
      });

      test('Square - 6 Feet (side = 4)', () {
        final shape = factory.createShape(
          type: ShapeType.square,
          dimensions: {'side': 4.0},
          unit: '6 Feet',
        );
        // 4 units = 7.3152m
        // Area = 7.3152² = 53.512060
        expect(shape.areaInSqMeter, closeTo(53.512060, 0.01));
      });
    });



    group('Irregular Quadrilateral Tests', () {
      test('Irregular Quadrilateral - Meters (N=10, E=8, S=10, W=8)', () {
        final shape = factory.createShape(
          type: ShapeType.irregularQuadrilateral,
          dimensions: {
            'sideA': 10.0, // North
            'sideB': 8.0,  // East
            'sideC': 10.0, // South
            'sideD': 8.0,  // West
          },
          unit: 'Meters',
        );
        // Area = ((10+10)/2) * ((8+8)/2) = 10 * 8 = 80
        expect(shape.areaInSqMeter, closeTo(80.0, 0.01));
      });

      test('Irregular Quadrilateral - Feet (N=10, E=8, S=10, W=8)', () {
        final shape = factory.createShape(
          type: ShapeType.irregularQuadrilateral,
          dimensions: {
            'sideA': 10.0, // North
            'sideB': 8.0,  // East
            'sideC': 10.0, // South
            'sideD': 8.0,  // West
          },
          unit: 'Feet',
        );
        // 10ft = 3.048m, 8ft = 2.4384m
        // Area = ((3.048+3.048)/2) * ((2.4384+2.4384)/2) = 3.048 * 2.4384 = 7.432435
        expect(shape.areaInSqMeter, closeTo(7.432435, 0.01));
      });

      test('Irregular Quadrilateral - 6 Feet (N=10, E=8, S=10, W=8)', () {
        final shape = factory.createShape(
          type: ShapeType.irregularQuadrilateral,
          dimensions: {
            'sideA': 10.0, // North
            'sideB': 8.0,  // East
            'sideC': 10.0, // South
            'sideD': 8.0,  // West
          },
          unit: '6 Feet',
        );
        // 10 units = 18.288m, 8 units = 14.6304m
        // Area = ((18.288+18.288)/2) * ((14.6304+14.6304)/2) = 18.288 * 14.6304 = 267.560755
        expect(shape.areaInSqMeter, closeTo(267.560755, 0.01));
      });
    });

    group('Edge Cases', () {
      test('Triangle - Invalid sides should throw exception', () {
        expect(
          () => factory.createShape(
            type: ShapeType.triangle,
            dimensions: {'sideA': 1.0, 'sideB': 2.0, 'sideC': 10.0},
            unit: 'Meters',
          ),
          throwsException,
        );
      });

      test('Very small values should work correctly', () {
        final shape = factory.createShape(
          type: ShapeType.square,
          dimensions: {'side': 0.1},
          unit: 'Meters',
        );
        expect(shape.areaInSqMeter, closeTo(0.01, 0.0001));
      });

      test('Large values should work correctly', () {
        final shape = factory.createShape(
          type: ShapeType.square,
          dimensions: {'side': 1000.0},
          unit: 'Meters',
        );
        expect(shape.areaInSqMeter, closeTo(1000000.0, 0.01));
      });
    });
  });
}
