import 'package:flutter/material.dart';

@immutable
class AppPalette extends ThemeExtension<AppPalette> {
  const AppPalette({
    required this.primary,
    required this.primarySoft,
    required this.secondary,
    required this.success,
    required this.warning,
    required this.error,
    required this.scaffold,
    required this.appBar,
    required this.surface,
    required this.surfaceRaised,
    required this.surfaceSoft,
    required this.input,
    required this.border,
    required this.divider,
    required this.text,
    required this.textStrong,
    required this.textMuted,
    required this.textDisabled,
    required this.onPrimary,
    required this.onSecondary,
    required this.overlay,
    required this.shadow,
  });

  final Color primary;
  final Color primarySoft;
  final Color secondary;
  final Color success;
  final Color warning;
  final Color error;
  final Color scaffold;
  final Color appBar;
  final Color surface;
  final Color surfaceRaised;
  final Color surfaceSoft;
  final Color input;
  final Color border;
  final Color divider;
  final Color text;
  final Color textStrong;
  final Color textMuted;
  final Color textDisabled;
  final Color onPrimary;
  final Color onSecondary;
  final Color overlay;
  final Color shadow;

  static const light = AppPalette(
    primary: Color(0xFF0058BE),
    primarySoft: Color(0xFFEAF3FF),
    secondary: Color(0xFFFCCC38),
    success: Color(0xFF16A34A),
    warning: Color(0xFFF97316),
    error: Color(0xFFDC2626),
    scaffold: Color(0xFFFFFFFF),
    appBar: Color(0xFFF8F9FA),
    surface: Color(0xFFFFFFFF),
    surfaceRaised: Color(0xFFFFFFFF),
    surfaceSoft: Color(0xFFF7F9FF),
    input: Color(0xFFF7F9FF),
    border: Color(0xFFC7C5D1),
    divider: Color(0xFFD1D5DB),
    text: Color(0xFF4B5563),
    textStrong: Color(0xFF111827),
    textMuted: Color(0xFF6B7280),
    textDisabled: Color(0xFF9CA3AF),
    onPrimary: Color(0xFFFFFFFF),
    onSecondary: Color(0xFF111827),
    overlay: Color(0x42000000),
    shadow: Color(0x1F000000),
  );

  static const dark = AppPalette(
    primary: Color(0xFF7EB6FF),
    primarySoft: Color(0xFF0D2A4D),
    secondary: Color(0xFFE8C84A),
    success: Color(0xFF4ADE80),
    warning: Color(0xFFF59E0B),
    error: Color(0xFFF87171),
    scaffold: Color(0xFF0B1020),
    appBar: Color(0xFF10162A),
    surface: Color(0xFF111827),
    surfaceRaised: Color(0xFF182033),
    surfaceSoft: Color(0xFF151B2E),
    input: Color(0xFF151B2E),
    border: Color(0xFF334155),
    divider: Color(0xFF263244),
    text: Color(0xFFD1D5DB),
    textStrong: Color(0xFFF8FAFC),
    textMuted: Color(0xFF9CA3AF),
    textDisabled: Color(0xFF64748B),
    onPrimary: Color(0xFF050816),
    onSecondary: Color(0xFF111827),
    overlay: Color(0x99000000),
    shadow: Color(0x66000000),
  );

  @override
  AppPalette copyWith({
    Color? primary,
    Color? primarySoft,
    Color? secondary,
    Color? success,
    Color? warning,
    Color? error,
    Color? scaffold,
    Color? appBar,
    Color? surface,
    Color? surfaceRaised,
    Color? surfaceSoft,
    Color? input,
    Color? border,
    Color? divider,
    Color? text,
    Color? textStrong,
    Color? textMuted,
    Color? textDisabled,
    Color? onPrimary,
    Color? onSecondary,
    Color? overlay,
    Color? shadow,
  }) {
    return AppPalette(
      primary: primary ?? this.primary,
      primarySoft: primarySoft ?? this.primarySoft,
      secondary: secondary ?? this.secondary,
      success: success ?? this.success,
      warning: warning ?? this.warning,
      error: error ?? this.error,
      scaffold: scaffold ?? this.scaffold,
      appBar: appBar ?? this.appBar,
      surface: surface ?? this.surface,
      surfaceRaised: surfaceRaised ?? this.surfaceRaised,
      surfaceSoft: surfaceSoft ?? this.surfaceSoft,
      input: input ?? this.input,
      border: border ?? this.border,
      divider: divider ?? this.divider,
      text: text ?? this.text,
      textStrong: textStrong ?? this.textStrong,
      textMuted: textMuted ?? this.textMuted,
      textDisabled: textDisabled ?? this.textDisabled,
      onPrimary: onPrimary ?? this.onPrimary,
      onSecondary: onSecondary ?? this.onSecondary,
      overlay: overlay ?? this.overlay,
      shadow: shadow ?? this.shadow,
    );
  }

  @override
  AppPalette lerp(ThemeExtension<AppPalette>? other, double t) {
    if (other is! AppPalette) return this;

    return AppPalette(
      primary: Color.lerp(primary, other.primary, t)!,
      primarySoft: Color.lerp(primarySoft, other.primarySoft, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      error: Color.lerp(error, other.error, t)!,
      scaffold: Color.lerp(scaffold, other.scaffold, t)!,
      appBar: Color.lerp(appBar, other.appBar, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      surfaceRaised: Color.lerp(surfaceRaised, other.surfaceRaised, t)!,
      surfaceSoft: Color.lerp(surfaceSoft, other.surfaceSoft, t)!,
      input: Color.lerp(input, other.input, t)!,
      border: Color.lerp(border, other.border, t)!,
      divider: Color.lerp(divider, other.divider, t)!,
      text: Color.lerp(text, other.text, t)!,
      textStrong: Color.lerp(textStrong, other.textStrong, t)!,
      textMuted: Color.lerp(textMuted, other.textMuted, t)!,
      textDisabled: Color.lerp(textDisabled, other.textDisabled, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t)!,
      overlay: Color.lerp(overlay, other.overlay, t)!,
      shadow: Color.lerp(shadow, other.shadow, t)!,
    );
  }
}
