import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/core/theme/app_text_style.dart';
import 'package:nbk_alavu_app/core/theme/app_theme.dart';
import 'package:nbk_alavu_app/core/utils/format_utils.dart';

class DashboardHeader extends StatelessWidget {
  final double totalAreaSqM;

  const DashboardHeader({
    super.key,
    required this.totalAreaSqM,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    
   // Calculate Cents and Ares from square meters
    final cents = totalAreaSqM / 40.4686;
    final ares = totalAreaSqM / 100;
    
    // Smart unit conversion
    // If Cents >= 100, show Acres (100 cents = 1 acre)
    final bool showAcres = cents >= 100;
    final double acreValue = cents / 100;

    // If Ares >= 100, show Hectares (100 ares = 1 hectare)
    final bool showHectares = ares >= 100;
    final double hectareValue = ares / 100;

    return Container(
      width: double.infinity,
      decoration: Theme.of(context).dashboardHeaderDecoration,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            'Total Area',
            style: Theme.of(context).dashboardTitle,
          ),
          const SizedBox(height: 6),
          
          // Main Values Row
          Row(
            children: [
              // Cents/Acres Value
              Expanded(
                child: _buildMetricCard(
                  context: context,
                  label: showAcres ? 'Acres' : 'Cents',
                  value: FormatUtils.formatArea(showAcres ? acreValue : cents),
                  isDarkMode: isDarkMode,
                ),
              ),
              const SizedBox(width: 12),
              
              // Ares/Hectares Value
              Expanded(
                child: _buildMetricCard(
                  context: context,
                  label: showHectares ? 'Hectares' : 'Ares',
                  value: FormatUtils.formatArea(
                    showHectares ? hectareValue : ares,
                  ),
                  isDarkMode: isDarkMode,
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 6),
          
          // Square Meters (Secondary)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: Theme.of(context).dashboardSecondaryDecoration,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sq. Meter',
                  style: Theme.of(context).dashboardSecondaryLabel,
                ),
                Text(
                  FormatUtils.formatArea(totalAreaSqM),
                  style: Theme.of(context).dashboardSecondaryValue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMetricCard({
    required BuildContext context,
    required String label,
    required String value,
    required bool isDarkMode,
  }) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: Theme.of(context).dashboardMetricCardDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: Theme.of(context).dashboardMetricLabel,
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: Theme.of(context).dashboardMetricValue,
          ),
        ],
      ),
    );
  }
}
