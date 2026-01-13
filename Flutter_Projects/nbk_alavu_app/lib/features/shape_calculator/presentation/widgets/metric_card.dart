import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nbk_alavu_app/core/constants/app_strings.dart';
import 'package:nbk_alavu_app/core/theme/app_color.dart';
import 'package:nbk_alavu_app/core/theme/app_text_style.dart';
import 'package:nbk_alavu_app/core/theme/app_theme.dart';

/// A metric card displaying a unit label and value with copy functionality
class MetricCard extends StatelessWidget {
  final String label;
  final String value;

  const MetricCard({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: Theme.of(context).dashboardMetricCardDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(label, style: Theme.of(context).dashboardMetricLabel),
              InkWell(
                onTap: () async {
                  await Clipboard.setData(ClipboardData(text: value));
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(AppStrings.copiedMessage(label, value)),
                        duration: const Duration(seconds: 1),
                        backgroundColor:
                            Theme.of(context).brightness == Brightness.dark
                            ? AppColor.snackBarBackgroundDark
                            : AppColor.snackBarBackgroundLight,
                      ),
                    );
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Icon(
                    Icons.copy,
                    size: 14,
                    color: Theme.of(context).primaryColorLight,
                  ),
                ),
              ),
            ],
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
