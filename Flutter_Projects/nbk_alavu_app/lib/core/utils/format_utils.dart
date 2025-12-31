class FormatUtils {
  static String formatArea(double value) {
    String formatted = value.toStringAsFixed(3);
    if (formatted.endsWith(".000")) {
      return formatted.substring(0, formatted.length - 4);
    }
    return formatted;
  }
}
