import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/core/theme/app_text_style.dart';

class ResultSection extends StatelessWidget {
  final String formattedResult;

  const ResultSection({super.key, required this.formattedResult});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Theme.of(context).colorScheme.primaryContainer,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            "Total Area Breakdown:",
            style: AppTextStyle.resultTitle(context),
          ),
          const SizedBox(height: 10),
          Text(
            formattedResult,
            style: AppTextStyle.resultValue(context),
          ),
        ],
      ),
    );
  }
}
