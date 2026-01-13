import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A reusable text field for dimension input with custom formatting and validation
class DimensionInputField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final TextInputAction textInputAction;
  final VoidCallback? onSubmitted;
  final Widget? suffixIcon;

  const DimensionInputField({
    super.key,
    required this.controller,
    required this.label,
    required this.textInputAction,
    this.onSubmitted,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.phone,
      textInputAction: textInputAction,
      onSubmitted: (_) {
        if (textInputAction == TextInputAction.done && onSubmitted != null) {
          onSubmitted!();
        }
      },
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[0-9\.+/\s]')),
        TextInputFormatter.withFunction((oldValue, newValue) {
          final text = newValue.text;
          // Block invalid sequences and positions
          if (text.contains('++') ||
              text.contains('.+') ||
              text.contains('//') ||
              text.contains('+00') ||
              text.contains('+/') ||
              text.contains('./') ||
              text.contains('. ') ||
              text.contains(' .') ||
              text.contains('/+') ||
              text.contains(' /') ||
              text.contains('/ ') ||
              text.contains('  ') ||
              text.startsWith(' ') ||
              text.startsWith('.') ||
              text.startsWith('+') ||
              text.startsWith('/') ||
              text.startsWith('00') ||
              text.contains(RegExp(r'[^0-9]\.')) ||
              // Block 0/, 0.0/, 0.00/ etc (zero followed by /)
              text.contains(RegExp(r'(^|\/)0(\.0*)?\/')) ||
              // Block 0+, 0.0+, 0.00+ etc (zero followed by +)
              text.contains(RegExp(r'(^|\+)0(\.0*)?\+'))) {
            return oldValue;
          }
          // specific check: ensure no segment (split by +) has more than one dot
          final parts = text.split('+');
          for (final part in parts) {
            if (part.split('.').length > 2) {
              return oldValue;
            }
          }
          return newValue;
        }),
      ],
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
