import 'package:flutter/material.dart';

class AppColor {
  const AppColor._();

  /// Brand colors
  static const Color primary = Color(0xFF00003C);
  static const Color secondary = Color(0xFFFCCC38);
  static const Color primaryHighlight = Color(0xA83A3AF3);

  /// Semantic colors
  static const Color success = Color(0xFF16A34A);
  static const Color warning = Color(0xFFF97316);
  static const Color error = Color(0xFFDC2626);

  /// Common colors
  static const Color white = Colors.white;
  static const Color black = Colors.black;

  /// Neutral colors
  static const Color grey = Color(0xFF6B7280);
  static const Color lightGrey = Color(0xFFD1D5DB);

  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primary, secondary],
  );

  ///Custom Colors
  static const Color text = Color(0xFF767684);
  static const Color textDark = Color(0xFF374151);
  static const Color textLight = Color(0xFFCACACA);
  static const Color border = Color(0xFFC7C5D1);
  static const Color textFieldBackground = Color(0xFFF7F9FF);
  static const Color appbarBackground = Color(0xFFF8F9FA);
  static const Color cardBackground = Color(0xFFEFF6FF);
}
