import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_color.dart';
import 'app_palette.dart';
import 'app_typography.dart';

class AppTheme {
  const AppTheme._();

  static const double _radiusSmall = 4;
  static const double _radiusMedium = 8;
  static const double _radiusLarge = 16;

  static ThemeData get light => _theme(Brightness.light);

  static ThemeData get dark => _theme(Brightness.dark);

  static ThemeData _theme(Brightness brightness) {
    final isLight = brightness == Brightness.light;
    final palette = isLight ? AppPalette.light : AppPalette.dark;

    final colorScheme = ColorScheme(
      brightness: brightness,
      primary: palette.primary,
      onPrimary: palette.onPrimary,
      secondary: palette.secondary,
      onSecondary: palette.onSecondary,
      tertiary: palette.success,
      onTertiary: isLight ? AppColor.white : const Color(0xFF052E16),
      error: palette.error,
      onError: isLight ? AppColor.white : const Color(0xFF450A0A),
      surface: palette.scaffold,
      onSurface: palette.textStrong,
      surfaceContainerLowest: palette.scaffold,
      surfaceContainerLow: palette.surface,
      surfaceContainer: palette.surfaceSoft,
      surfaceContainerHigh: palette.surfaceRaised,
      surfaceContainerHighest: palette.input,
      onSurfaceVariant: palette.textMuted,
      outline: palette.border,
      outlineVariant: palette.divider,
      shadow: palette.shadow,
      scrim: palette.overlay,
      inverseSurface: isLight ? const Color(0xFF111827) : const Color(0xFFE5E7EB),
      onInverseSurface: isLight ? AppColor.white : const Color(0xFF111827),
      inversePrimary: isLight ? AppPalette.dark.primary : AppPalette.light.primary,
    );

    final textTheme = AppTypography.create(colorScheme);

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
      extensions: [palette],
      fontFamily: AppTypography.fontFamily == null || AppTypography.fontFamily!.isEmpty ? null : AppTypography.fontFamily,
      primaryColor: palette.primary,
      textTheme: textTheme,
      scaffoldBackgroundColor: palette.scaffold,
      appBarTheme: AppBarTheme(
        toolbarHeight: 60,
        backgroundColor: palette.appBar,
        foregroundColor: palette.textStrong,
        surfaceTintColor: Colors.transparent,
        shadowColor: palette.shadow,
        elevation: isLight ? 2 : 0,
        centerTitle: false,
        iconTheme: IconThemeData(color: palette.textStrong),
        actionsIconTheme: IconThemeData(color: palette.textStrong),
        titleTextStyle: textTheme.headlineMedium?.copyWith(color: palette.textStrong, fontWeight: FontWeight.w800),
        titleSpacing: 10,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: isLight ? Brightness.dark : Brightness.light,
          systemNavigationBarColor: colorScheme.surface,
          systemNavigationBarIconBrightness: isLight ? Brightness.dark : Brightness.light,
        ),
      ),

      cardTheme: CardThemeData(
        elevation: isLight ? 2 : 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(_radiusMedium)),
        color: palette.surfaceRaised,
      ),

      dialogTheme: DialogThemeData(
        backgroundColor: palette.surfaceRaised,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(_radiusMedium)),
      ),

      snackBarTheme: SnackBarThemeData(
        backgroundColor: colorScheme.inverseSurface,
        contentTextStyle: textTheme.bodyMedium?.copyWith(color: colorScheme.onInverseSurface),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(_radiusSmall)),
      ),

      dividerTheme: DividerThemeData(color: palette.divider, thickness: 1),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12),
          minimumSize: const Size.fromHeight(52),
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          textStyle: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600, color: colorScheme.onPrimary),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(_radiusMedium)),
        ),
      ),

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: colorScheme.secondary,
          foregroundColor: colorScheme.onSecondary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(_radiusSmall)),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
          foregroundColor: colorScheme.primary,
          side: BorderSide(color: colorScheme.primary),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(_radiusSmall)),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          textStyle: textTheme.titleLarge,
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          splashFactory: NoSplash.splashFactory,
          foregroundColor: colorScheme.primary,
          overlayColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(_radiusLarge)),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        fillColor: palette.input,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(_radiusMedium)),
        prefixStyle: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w400, color: palette.textMuted),
        hintStyle: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w400, color: palette.textMuted),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(_radiusMedium),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(_radiusMedium),
          borderSide: BorderSide(color: colorScheme.primary),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(_radiusMedium),
          borderSide: BorderSide(color: colorScheme.error),
        ),
        floatingLabelStyle: textTheme.titleSmall?.copyWith(color: colorScheme.primary),
      ),

      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colorScheme.primary;
          }
          return null;
        }),
      ),

      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.all(colorScheme.primary),
        trackColor: WidgetStateProperty.all(colorScheme.primary.withValues(alpha: 0.35)),
      ),

      radioTheme: RadioThemeData(fillColor: WidgetStateProperty.all(colorScheme.primary)),

      iconButtonTheme: IconButtonThemeData(style: IconButton.styleFrom(foregroundColor: colorScheme.onSurface)),

      listTileTheme: ListTileThemeData(iconColor: colorScheme.onSurface, textColor: colorScheme.onSurface),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorScheme.surface,
        selectedItemColor: colorScheme.primary,
        unselectedItemColor: colorScheme.onSurfaceVariant,
        selectedLabelStyle: textTheme.labelSmall,
        unselectedLabelStyle: textTheme.labelSmall,
      ),

      progressIndicatorTheme: ProgressIndicatorThemeData(color: colorScheme.primary),

      textSelectionTheme: TextSelectionThemeData(
        cursorColor: colorScheme.primary,
        selectionColor: colorScheme.primary.withValues(alpha: 0.25),
        selectionHandleColor: colorScheme.primary,
      ),
    );
  }
}
