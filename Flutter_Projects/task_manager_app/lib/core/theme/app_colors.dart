import 'package:flutter/material.dart';

class AppColors {
  // ─────────────────────────────────────────
  // Primary Brand (UI matched)
  // ─────────────────────────────────────────
  static const Color primary = Color(0xFF1CC6E8); // Main CTA, FAB
  static const Color primaryDark = Color(0xFF0FA3BF);
  static const Color primarySoft = Color(0xFFE8F9FD); // Chips, icon bg

  // ─────────────────────────────────────────
  // Background & Surface
  // ─────────────────────────────────────────
  static const Color background = Color(0xFFF8FAFB); // App bg
  static const Color surface = Color(0xFFFFFFFF); // Cards, sheets

  // ─────────────────────────────────────────
  // Text
  // ─────────────────────────────────────────
  static const Color textPrimary = Color(0xFF1E293B);
  static const Color textSecondary = Color(0xFF64748B);
  static const Color textHint = Color(0xFF94A3B8);

  // ─────────────────────────────────────────
  // Status
  // ─────────────────────────────────────────
  static const Color success = Color(0xFF22C55E);
  static const Color successSoft = Color(0xFFEAFBF3);

  static const Color warning = Color(0xFFF59E0B);

  static const Color error = Color(0xFFEF4444);
  static const Color errorSoft = Color(0xFFFEECEC);

  // ─────────────────────────────────────────
  // Borders & Dividers
  // ─────────────────────────────────────────
  static const Color border = Color(0xFFE5E7EB);
  static const Color divider = Color(0xFFF1F5F9);

  // ─────────────────────────────────────────
  // Disabled / Utility
  // ─────────────────────────────────────────
  static const Color disabled = Color(0xFFCBD5E1);
  static const Color disabledText = Color(0xFF9CA3AF);

  static const Color iconSecondary = Color(0xFF6B7280);
  static const Color transparent = Colors.transparent;

  static const Color white = Colors.white;

  // Prevent instantiation
  const AppColors._();
}
