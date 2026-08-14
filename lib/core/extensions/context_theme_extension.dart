import 'package:flutter/material.dart';

import '../../app/theme/app_palette.dart';

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  ColorScheme get colors => theme.colorScheme;

  AppPalette get appColors => theme.extension<AppPalette>() ?? AppPalette.light;

  TextTheme get textTheme => theme.textTheme;

  bool get isDarkMode => theme.brightness == Brightness.dark;
}
