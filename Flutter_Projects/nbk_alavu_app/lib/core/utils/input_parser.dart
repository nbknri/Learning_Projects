/// Utility class for parsing and validating user input for shape dimensions.
/// Handles mixed fractions, math expressions, and input validation.
class InputParser {
  // Private constructor to prevent instantiation
  InputParser._();

  /// Parse mixed fractions like "25 1/2" → 25.5
  /// 
  /// Supports:
  /// - Simple fractions: "1/2" → 0.5
  /// - Mixed fractions: "25 1/2" → 25.5
  /// - Regular numbers: "10" → 10.0
  /// 
  /// Returns 0 if input is empty or invalid.
  static double parseMixedFraction(String input) {
    final trimmed = input.trim();
    if (trimmed.isEmpty) return 0;

    // Check if it contains a fraction
    if (trimmed.contains('/')) {
      final parts = trimmed.split(' ');

      if (parts.length == 2) {
        // Mixed fraction: "25 1/2"
        final whole = double.tryParse(parts[0]) ?? 0;
        final fractionParts = parts[1].split('/');
        if (fractionParts.length == 2) {
          final numerator = double.tryParse(fractionParts[0]) ?? 0;
          final denominator = double.tryParse(fractionParts[1]) ?? 1;
          if (denominator != 0) {
            return whole + (numerator / denominator);
          }
        }
        return whole;
      } else if (parts.length == 1) {
        // Simple fraction: "1/2"
        final fractionParts = parts[0].split('/');
        if (fractionParts.length == 2) {
          final numerator = double.tryParse(fractionParts[0]) ?? 0;
          final denominator = double.tryParse(fractionParts[1]) ?? 1;
          if (denominator != 0) {
            return numerator / denominator;
          }
        }
      }
    }

    // No fraction, parse as regular number
    return double.tryParse(trimmed) ?? 0;
  }

  /// Validate input pattern - reject invalid space patterns.
  /// 
  /// Valid inputs:
  /// - "10+20"
  /// - "10 + 20"
  /// - "10 1/2"
  /// - "10 1/2 + 20 3/4"
  /// 
  /// Invalid inputs:
  /// - "10 200" (multiple numbers with spaces, no operator/fraction)
  /// - "1 2 3"
  /// - "1 234"
  /// 
  /// Returns true if input is valid, false otherwise.
  static bool isValidInput(String input) {
    if (input.trim().isEmpty) return true;

    // Split by + to check each segment
    final segments = input.split('+');

    for (final segment in segments) {
      final trimmed = segment.trim();
      if (trimmed.isEmpty) continue;

      // Check if segment contains spaces
      if (trimmed.contains(' ')) {
        // Valid case 1: Mixed fraction "25 1/2"
        final parts = trimmed.split(' ');

        if (parts.length == 2 && parts[1].contains('/')) {
          // This is a mixed fraction, valid
          continue;
        }

        // Invalid case: Multiple numbers with spaces but no fraction
        // e.g., "10 200", "1 2 3", "1 234"
        return false;
      }
    }

    return true;
  }

  /// Basic math parser to handle expressions like "20 + 0.5" and mixed fractions "25 1/2 + 15 3/4".
  /// 
  /// Returns string representation of result or original string if evaluation fails.
  static String evaluate(String input) {
    if (input.isEmpty) return "";
    try {
      if (input.contains('+')) {
        final parts = input.split('+');
        double sum = 0;
        for (var p in parts) {
          sum += parseMixedFraction(p);
        }
        if (sum == 0 && parts.every((p) => p.trim().isEmpty)) return "";
        return sum.toString();
      }
      // Single value (could be mixed fraction)
      final result = parseMixedFraction(input);
      return result == 0 && input.trim().isEmpty ? "" : result.toString();
    } catch (e) {
      return input;
    }
  }
}
