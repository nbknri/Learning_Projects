import 'package:flutter/material.dart';
import 'app_colors.dart';

/// App മുഴുവൻ ഉപയോഗിക്കുന്ന text styles
/// Centralized typography system
class AppTextStyles {
  // ─────────────────────────────────────────
  // Screen Titles (Login, Projects, Tasks)
  // ─────────────────────────────────────────
  static const TextStyle title = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  // ─────────────────────────────────────────
  // Section Headings
  // ─────────────────────────────────────────
  static const TextStyle subtitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  // ─────────────────────────────────────────
  // Body Text (Task title, content)
  // ─────────────────────────────────────────
  static const TextStyle body = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );

  // ─────────────────────────────────────────
  // Secondary / Hint Text
  // ─────────────────────────────────────────
  static const TextStyle caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  // ─────────────────────────────────────────
  // Button Text
  // ─────────────────────────────────────────
  static const TextStyle button = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  // Prevent instantiation
  const AppTextStyles._();
}
