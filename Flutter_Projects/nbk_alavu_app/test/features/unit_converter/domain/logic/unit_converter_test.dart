import 'package:flutter_test/flutter_test.dart';
import 'package:nbk_alavu_app/features/unit_converter/domain/entities/unit_type.dart';
import 'package:nbk_alavu_app/features/unit_converter/domain/logic/unit_converter_logic.dart';

void main() {
  group('UnitConverter', () {
    test('converts meters to meters', () {
      expect(UnitConverter.convert(1, UnitType.meters, UnitType.meters), 1);
    });

    test('converts meters to kilometers', () {
      expect(UnitConverter.convert(1000, UnitType.meters, UnitType.kilometers), 1);
    });
    
     test('converts kilometers to meters', () {
      expect(UnitConverter.convert(1, UnitType.kilometers, UnitType.meters), 1000);
    });

    test('converts meters to centimeters', () {
      expect(UnitConverter.convert(1, UnitType.meters, UnitType.centimeters), 100);
    });

    test('converts feet to inches', () {
      // 1 ft = 12 in
      expect(UnitConverter.convert(1, UnitType.feet, UnitType.inches), closeTo(12.0, 0.0001));
    });
    
    test('converts inches to centimeters', () {
       // 1 in = 2.54 cm
      expect(UnitConverter.convert(1, UnitType.inches, UnitType.centimeters), closeTo(2.54, 0.0001));
    });
  });
}
