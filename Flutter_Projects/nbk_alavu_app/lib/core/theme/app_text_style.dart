import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/core/theme/app_color.dart';

class AppTextStyle {
  const AppTextStyle._();

  //───────────────────────────────────
  // Component Styles
  //───────────────────────────────────
  static TextStyle appBarTitle(Color color) {
    return TextStyle(
      color: color,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.5,
    );
  }

  static TextStyle inputLabel(Color color) {
    return TextStyle(color: color);
  }

  static TextStyle inputHint(Color color) {
    return TextStyle(color: color.withValues(alpha: 0.7));
  }

  static TextStyle buttonText(Color color) {
    return const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  }

  static TextStyle snackBarContent(Color color) {
    return TextStyle(color: color);
  }

  static TextStyle snackBarText() {
    return const TextStyle(color: Colors.white, fontSize: 14);
  }

  static TextStyle get bodyBold => const TextStyle(fontWeight: FontWeight.bold);

  //───────────────────────────────────
  // Result Styles
  //───────────────────────────────────
  static TextStyle resultTitle(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).colorScheme.onPrimaryContainer.withValues(alpha: 0.8),
      fontSize: 16,
    );
  }

  static TextStyle resultValue(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).colorScheme.onPrimaryContainer,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }
}

//───────────────────────────────────────────────────────
// Text Style Extensions
//───────────────────────────────────────────────────────

/// Dashboard Text Styles Extension
extension DashboardTextStyles on ThemeData {
  TextStyle get dashboardTitle => TextStyle(
    color: AppColor.white.withValues(alpha: 0.9),
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
  );

  TextStyle get dashboardMetricLabel => TextStyle(
    color: AppColor.white.withValues(alpha: 0.8),
    fontSize: 11,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
  );

  TextStyle get dashboardMetricValue => const TextStyle(
    color: AppColor.white,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    letterSpacing: -0.5,
  );

  TextStyle get dashboardSecondaryLabel => TextStyle(
    color: AppColor.white.withValues(alpha: 0.8),
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  TextStyle get dashboardSecondaryValue => const TextStyle(
    color: AppColor.white,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
}

/// Input Section Text Styles Extension
extension InputSectionTextStyles on ThemeData {
  TextStyle get unitLabelStyle => TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: colorScheme.onSurface.withValues(alpha: 0.7),
  );

  TextStyle get unitDropdownStyle => TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: colorScheme.primary,
  );

  TextStyle get addButtonTextStyle => const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  );
}

/// Shape Card Text Styles Extension
extension ShapeCardTextStyles on ThemeData {
  TextStyle get shapeCardTitle =>
      const TextStyle(fontWeight: FontWeight.w600, fontSize: 16);

  TextStyle shapeCardDimensions(BuildContext context) {
    return TextStyle(
      fontSize: 13,
      color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
    );
  }

  TextStyle get shapeCardArea => const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColor.accent,
  );
}

/// Common Text Styles Extension
extension CommonTextStyles on ThemeData {
  TextStyle get appBarTitleStyle =>
      const TextStyle(fontWeight: FontWeight.bold, color: AppColor.white);

  TextStyle get errorTextStyle => const TextStyle(color: AppColor.error);

  TextStyle get sectionHeaderStyle =>
      const TextStyle(fontWeight: FontWeight.bold);

  TextStyle choiceChipLabelStyle(bool isSelected) {
    return TextStyle(
      color: isSelected ? AppColor.white : null,
      fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
    );
  }
}
