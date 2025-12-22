import 'package:flutter/material.dart';

class AppColors {
  // ─────────────────────────────────────────
  // Brand / Primary Colors
  // ─────────────────────────────────────────
  static const Color primary = Color(0xFF2563EB);
  static const Color secondary = Color(0xFF60A5FA);

  // ─────────────────────────────────────────
  // Background & Surface
  // ─────────────────────────────────────────
  static const Color background = Color(0xFFFFFFFF);
  static const Color surface = Color(0xFFF9FAFB);

  // ─────────────────────────────────────────
  // Text Colors
  // ─────────────────────────────────────────
  static const Color textPrimary = Color(0xFF111827);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color textDisabled = Color(0xFF9CA3AF);

  // ─────────────────────────────────────────
  // Status Colors
  // ─────────────────────────────────────────
  static const Color success = Color(0xFF16A34A);
  static const Color warning = Color(0xFFF59E0B);
  static const Color error = Color(0xFFDC2626);

  // ─────────────────────────────────────────
  // Task Status Specific
  // ─────────────────────────────────────────
  static const Color taskPending = Color(0xFF9CA3AF);
  static const Color taskInProgress = Color(0xFF2563EB);
  static const Color taskCompleted = Color(0xFF16A34A);

  // ─────────────────────────────────────────
  // Borders & Dividers
  // ─────────────────────────────────────────
  static const Color border = Color(0xFFE5E7EB);
  static const Color divider = Color(0xFFE5E7EB);

  // ─────────────────────────────────────────
  // Utility
  // ─────────────────────────────────────────
  static const Color transparent = Colors.transparent;

  // Prevent instantiation
  const AppColors._();
}
