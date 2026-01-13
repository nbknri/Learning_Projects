import 'package:flutter_test/flutter_test.dart';
import 'package:nbk_alavu_app/features/unit_converter/domain/entities/area_unit.dart';
import 'package:nbk_alavu_app/features/unit_converter/domain/logic/area_converter_logic.dart';

void main() {
  group('AreaConverter', () {
    test('converts acre to cents correctly', () {
      // 1 Acre = 100 Cents
      expect(AreaConverter.convert(1, AreaUnit.acre, AreaUnit.cents), closeTo(100.0, 0.01));
    });

    test('converts cents to acre correctly', () {
      // 100 Cents = 1 Acre
      expect(AreaConverter.convert(100, AreaUnit.cents, AreaUnit.acre), closeTo(1.0, 0.01));
    });

    test('converts acre to sq meters correctly', () {
        // 1 Acre = 4046.86 Sq Meters
      expect(AreaConverter.convert(1, AreaUnit.acre, AreaUnit.sqMeter), closeTo(4046.86, 0.01));
    });

     test('converts sq feet to sq meters correctly', () {
        // 1 Sq Feet = 0.092903 Sq Meters
      expect(AreaConverter.convert(1, AreaUnit.sqFeet, AreaUnit.sqMeter), closeTo(0.092903, 0.01));
    });
    
    test('converts are to sq meters correctly', () {
        // 1 Are = 100 Sq Meters
      expect(AreaConverter.convert(1, AreaUnit.are, AreaUnit.sqMeter), closeTo(100, 0.01));
    });

    test('converts hectare to sq meters correctly', () {
      // 1 Hectare = 10000 Sq Meters
      expect(AreaConverter.convert(1, AreaUnit.hectare, AreaUnit.sqMeter), closeTo(10000, 0.01));
    });

    test('converts guntha to sq meters correctly', () {
      // 1 Guntha = 101.17 Sq Meters
      expect(AreaConverter.convert(1, AreaUnit.guntha, AreaUnit.sqMeter), closeTo(101.17, 0.01));
    });
  });
}
