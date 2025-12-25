import 'package:flutter/material.dart';
import 'package:task_manager_app/core/theme/app_colors.dart';

/// Centralized typography system
class AppTextStyles {
  // ─────────────────────────────────────────
  // Screen Titles (Login, Projects, Tasks)
  // ─────────────────────────────────────────
  static const TextStyle title = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );

  // ─────────────────────────────────────────
  // Card / Sub titles
  // ─────────────────────────────────────────
  static const TextStyle subtitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  // ─────────────────────────────────────────
  // Section labels (ACCOUNT, SETTINGS)
  // ─────────────────────────────────────────
  static const TextStyle sectionLabel = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.6,
    color: AppColors.textSecondary,
  );

  // ─────────────────────────────────────────
  // Body Text (Task title, content)
  // ─────────────────────────────────────────
  static const TextStyle body = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
    height: 1.5,
  );

  // ─────────────────────────────────────────
  // Secondary / Hint Text / Caption / meta
  // ─────────────────────────────────────────
  static const TextStyle caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  // ─────────────────────────────────────────
  //Elevated Button Text
  // ─────────────────────────────────────────
  static const TextStyle elevatedButton = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  // ─────────────────────────────────────────
  //Text Button Text
  // ─────────────────────────────────────────
  static const TextStyle textButton = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  );

  // ─────────────────────────────────────────
  // Destructive
  // ─────────────────────────────────────────
  static const TextStyle danger = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.error,
  );

  // Prevent instantiation
  const AppTextStyles._();
}
