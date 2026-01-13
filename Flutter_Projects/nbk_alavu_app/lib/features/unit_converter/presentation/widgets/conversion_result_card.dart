import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nbk_alavu_app/core/constants/app_strings.dart';
import 'package:nbk_alavu_app/core/theme/app_color.dart';

class ConversionResultCard extends StatelessWidget {
  final String resultText;
  final String unitDisplayName;
  final String unitSymbol;
  final bool isSelected;

  const ConversionResultCard({
    super.key,
    required this.resultText,
    required this.unitDisplayName,
    required this.unitSymbol,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    
    return Card(
      elevation: isSelected ? 2 : 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: isSelected
            ? BorderSide(color: colorScheme.primary, width: 2)
            : BorderSide.none,
      ),
      color: isSelected
          ? colorScheme.primaryContainer.withAlpha(
              50,
            ) // lighter primary container
          : colorScheme.surface,
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        title: Text(
          resultText,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: isSelected ? FontWeight.w800 : FontWeight.w600,
            color: isSelected ? colorScheme.primary : null,
          ),
        ),
        subtitle: Text(unitDisplayName),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              unitSymbol,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 8),
            IconButton(
              icon: const Icon(Icons.copy_rounded, size: 20),
              tooltip: 'Copy Value',
              onPressed: () {
                Clipboard.setData(ClipboardData(text: resultText));
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      AppStrings.copiedMessage(unitDisplayName, resultText),
                    ),
                    behavior: SnackBarBehavior.floating,
                    duration: const Duration(seconds: 2),
                    backgroundColor:
                        Theme.of(context).brightness == Brightness.dark
                        ? AppColor.snackBarBackgroundDark
                        : AppColor.snackBarBackgroundLight,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
