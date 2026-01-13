enum UnitType {
  meters('Meters', 'm'),
  kilometers('Kilometers', 'km'),
  centimeters('Centimeters', 'cm'),
  millimeters('Millimeters', 'mm'),
  feet('Feet', 'ft'),
  inches('Inches', 'in'),
  yards('Yards', 'yd');

  final String displayName;
  final String symbol;

  const UnitType(this.displayName, this.symbol);
}
