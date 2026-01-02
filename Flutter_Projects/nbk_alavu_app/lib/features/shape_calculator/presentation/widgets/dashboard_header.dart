import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/core/theme/app_color.dart';
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

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.primary, // Royal Blue
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColor.primary.withValues(alpha: 0.3),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            'Total Area',
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.9),
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 6),
          
          // Main Values Row
          Row(
            children: [
              // Cents Value
              Expanded(
                child: _buildMetricCard(
                  label: 'Cents',
                  value: FormatUtils.formatArea(cents),
                  isDarkMode: isDarkMode,
                ),
              ),
              const SizedBox(width: 12),
              
              // Ares Value
              Expanded(
                child: _buildMetricCard(
                  label: 'Ares',
                  value: FormatUtils.formatArea(ares),
                  isDarkMode: isDarkMode,
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 6),
          
          // Square Meters (Secondary)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sq. Meter',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.8),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  FormatUtils.formatArea(totalAreaSqM),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMetricCard({
    required String label,
    required String value,
    required bool isDarkMode,
  }) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.8),
              fontSize: 11,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.5,
            ),
          ),
        ],
      ),
    );
  }
}
