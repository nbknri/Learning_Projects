import 'package:flutter/material.dart';
import 'package:task_manager_app/core/theme/app_colors.dart';



/// Centralized typography system
class AppTextStyles {
  // ─────────────────────────────────────────
  // Screen Titles (Login, Projects, Tasks)
  // ─────────────────────────────────────────
  static const TextStyle title = TextStyle(
    fontSize: 30,
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
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  // ─────────────────────────────────────────
  //Elevated Button Text
  // ─────────────────────────────────────────
  static const TextStyle elevatedButton = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textLabel,
  );

  // ─────────────────────────────────────────
  //Text Button Text
  // ─────────────────────────────────────────
  static const TextStyle textButton = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  // Prevent instantiation
  const AppTextStyles._();
}
