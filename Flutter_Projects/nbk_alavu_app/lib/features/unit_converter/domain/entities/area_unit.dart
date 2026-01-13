enum AreaUnit {
  cents('Cents', 'cents'),
  acre('Acre', 'ac'),
  are('Are', 'are'),
  hectare('Hectare', 'ha'),
  sqFeet('Sq. Feet', 'ft²'),
  sqMeter('Sq. Meter', 'm²'),
  guntha('Guntha', 'guntha');

  final String displayName;
  final String symbol;

  const AreaUnit(this.displayName, this.symbol);
}
