import 'package:nbk_alavu_app/core/constants/app_strings.dart';

enum AreaUnit {
  cents(AppStrings.cents, 'cents'),
  are(AppStrings.are, 'are'),
  acre(AppStrings.acre, 'ac'),
  hectare(AppStrings.hectare, 'ha'),
  sqFeet(AppStrings.sqFeet, 'ft²'),
  sqMeter(AppStrings.sqMeter, 'm²'),
  guntha(AppStrings.guntha, 'guntha');

  final String displayName;
  final String symbol;

  const AreaUnit(this.displayName, this.symbol);
}
