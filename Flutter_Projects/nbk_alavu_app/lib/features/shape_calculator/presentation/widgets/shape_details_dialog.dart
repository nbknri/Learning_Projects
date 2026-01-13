import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/core/theme/app_color.dart';
import 'package:nbk_alavu_app/core/theme/app_text_style.dart';
import 'package:nbk_alavu_app/core/utils/format_utils.dart';
import 'package:nbk_alavu_app/features/shape_calculator/domain/entities/shape.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/extensions/shape_type_extension.dart';

class ShapeDetailsDialog extends StatelessWidget {
  final Shape shape;

  const ShapeDetailsDialog({super.key, required this.shape});

  @override
  Widget build(BuildContext context) {
    // Base area in Square Meters
    final areaSqM = shape.areaInSqMeter;

    // Conversion Factors
    const double sqMToSqFt = 10.7639;
    const double sqMToCent = 0.0247105;
    const double sqMToAcre = 0.000247105;
    const double sqMToAre = 0.01;
    const double sqMToHectare = 0.0001;

    final areaSqFt = areaSqM * sqMToSqFt;
    final areaCents = areaSqM * sqMToCent;
    final areaAcres = areaSqM * sqMToAcre;
    final areaAres = areaSqM * sqMToAre;
    final areaHectares = areaSqM * sqMToHectare;

    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Row(
                    children: [
                      Icon(Icons.info_outline, color: AppColor.primary),
                      const SizedBox(width: 8),
                      Text(
                        shape.type.displayName,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColor.primary,
                            ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(height: 10),

              // Dimensions
              Text(
                "Dimensions:",
                style: AppTextStyle.bodyBold,
              ),
              const SizedBox(height: 4),
              ...shape.formattedDimensions.entries.map(
                (e) => Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 2),
                  child: Text("• ${e.key}: ${e.value} ${shape.unit}"),
                ),
              ),
              const SizedBox(height: 16),

              // Area Conversions
              Text(
                "Area Conversions:",
                style: AppTextStyle.bodyBold,
              ),
              const SizedBox(height: 8),
              _buildConversionRow("Square Meter", areaSqM),
              _buildConversionRow("Square Feet", areaSqFt),
              _buildConversionRow("Cents", areaCents),
              _buildConversionRow("Acres", areaAcres),
              _buildConversionRow("Ares", areaAres),
              _buildConversionRow("Hectares", areaHectares),
            ],
          ),
        ));
  }

  Widget _buildConversionRow(String unit, double value) {
    // Format logic:
    // If > 0 but very small, show scientific or more decimals?
    // Let's use standard format but maybe more precision for acres/hectares if needed.
    // For now, using standard format.
    
    // Custom format for very small numbers to avoid "0.00"
    String formattedValue;
    if (value > 0 && value < 0.01) {
        formattedValue = value.toStringAsFixed(6);
    } else {
        formattedValue = FormatUtils.formatArea(value);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(unit, style: const TextStyle(fontWeight: FontWeight.w500)),
          Text(formattedValue, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
