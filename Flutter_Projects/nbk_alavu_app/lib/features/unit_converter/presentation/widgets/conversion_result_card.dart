import 'package:flutter/material.dart';

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
    return Card(
      color: isSelected
          ? Theme.of(context).colorScheme.surfaceContainerHighest
          : Theme.of(context).colorScheme.surface,
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        title: Text(
          resultText,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: isSelected ? Theme.of(context).colorScheme.primary : null,
          ),
        ),
        subtitle: Text(unitDisplayName),
        trailing: Text(
          unitSymbol,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
      ),
    );
  }
}
