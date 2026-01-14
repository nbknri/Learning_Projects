import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/core/theme/app_text_style.dart';
import 'package:nbk_alavu_app/core/theme/app_theme.dart';
import 'package:nbk_alavu_app/core/utils/format_utils.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/conversion_row.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/metric_card.dart';

class DashboardHeader extends StatefulWidget {
  final double totalAreaSqM;

  const DashboardHeader({
    super.key,
    required this.totalAreaSqM,
  });

  @override
  State<DashboardHeader> createState() => _DashboardHeaderState();
}

class _DashboardHeaderState extends State<DashboardHeader> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    
   // Calculate Cents and Ares from square meters
    final cents = widget.totalAreaSqM / 40.4686;
    final ares = widget.totalAreaSqM / 100;
    
    // Smart unit conversion
    // If Cents >= 100, show Acres (100 cents = 1 acre)
    final bool showAcres = cents >= 100;
    final double acreValue = cents / 100;

    // If Ares >= 100, show Hectares (100 ares = 1 hectare)
    final bool showHectares = ares >= 100;
    final double hectareValue = ares / 100;

    return TapRegion(
      onTapOutside: (_) {
        if (_isExpanded) {
          setState(() {
            _isExpanded = false;
          });
        }
      },
      child: Container(
        width: double.infinity,
        decoration: Theme.of(context).dashboardHeaderDecoration,
        padding: const EdgeInsets.only(left: 24, right: 24, bottom: 8),
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
                  child: MetricCard(
                    label: showAcres ? 'Acres' : 'Cents',
                    value: FormatUtils.formatArea(
                      showAcres ? acreValue : cents,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                
                // Ares/Hectares Value
                Expanded(
                  child: MetricCard(
                    label: showHectares ? 'Hectares' : 'Ares',
                    value: FormatUtils.formatArea(
                      showHectares ? hectareValue : ares,
                    ),
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 6),
            
            // All Unit Conversions
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
              decoration: Theme.of(context).dashboardSecondaryDecoration,
              child: Column(
                children: [
                  ConversionRow(
                    label: 'Sq. Meter',
                    value: FormatUtils.formatArea(widget.totalAreaSqM),
                  ),
                  
                  // Other conversions (conditionally shown)
                  if (_isExpanded) ...[
                    const SizedBox(height: 5),
                    const Divider(height: 1),
                    const SizedBox(height: 5),
                    ConversionRow(
                      label: 'Sq. Feet',
                      value: FormatUtils.formatArea(widget.totalAreaSqM * 10.7639),
                    ),
                    const SizedBox(height: 5),
                    const Divider(height: 1),
                    const SizedBox(height: 5),
                    ConversionRow(
                      label: 'Cents',
                      value: FormatUtils.formatArea(cents),
                    ),
                    const SizedBox(height: 5),
                    const Divider(height: 1),
                    const SizedBox(height: 5),
                    ConversionRow(
                      label: 'Acres',
                      value: FormatUtils.formatArea(acreValue),
                    ),
                    const SizedBox(height: 5),
                    const Divider(height: 1),
                    const SizedBox(height: 5),
                    ConversionRow(
                      label: 'Ares',
                      value: FormatUtils.formatArea(ares),
                    ),
                    const SizedBox(height: 5),
                    const Divider(height: 1),
                    const SizedBox(height: 5),
                    ConversionRow(
                      label: 'Hectares',
                      value: FormatUtils.formatArea(hectareValue),
                    ),
                  ],
                  
                  // Expand/Collapse Button at the bottom
                  SizedBox(
                    height: 20,
                    width: double.infinity,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      icon: Icon(
                        _isExpanded ? Icons.expand_less : Icons.expand_more,
                        size: 20,
                      ),
                      onPressed: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                        setState(() {
                          _isExpanded = !_isExpanded;
                        });
                      },
                      tooltip: _isExpanded ? 'Show less' : 'Show more',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
