import 'package:flutter/material.dart';

import 'theme/theme.dart';

class CustomTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: CustomColors.backgroundColor,
    backgroundColor: CustomColors.backgroundColor,
    brightness: Brightness.light,
    primaryColor: CustomColors.primaryColor,
    colorScheme: const ColorScheme(
      primary: CustomColors.primaryColor,
      primaryContainer: CustomColors.primaryContainerColor,
      secondary: CustomColors.secondaryColor,
      secondaryContainer: CustomColors.secondaryContainerColor,
      background: CustomColors.backgroundColor,
      surface: CustomColors.surfaceColor,
      onBackground: CustomColors.onBackgroundColor,
      error: CustomColors.errorColor,
      onError: CustomColors.onErrorColor,
      onPrimary: CustomColors.onPrimaryColor,
      onSecondary: CustomColors.onSecondaryColor,
      onSurface: CustomColors.onSurfaceColor,
      brightness: Brightness.light,
    ),
    textTheme: CustomTexts.lightTextTheme,
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: CustomColors.backgroundColor,
    backgroundColor: CustomColors.backgroundColor,
    brightness: Brightness.light,
    primaryColor: CustomColors.primaryColor,
    colorScheme: const ColorScheme(
      primary: CustomColors.primaryColor,
      primaryContainer: CustomColors.primaryContainerColor,
      secondary: CustomColors.secondaryColor,
      secondaryContainer: CustomColors.secondaryContainerColor,
      background: CustomColors.backgroundColor,
      surface: CustomColors.surfaceColor,
      onBackground: CustomColors.onBackgroundColor,
      error: CustomColors.errorColor,
      onError: CustomColors.onErrorColor,
      onPrimary: CustomColors.onPrimaryColor,
      onSecondary: CustomColors.onSecondaryColor,
      onSurface: CustomColors.onSurfaceColor,
      brightness: Brightness.light,
    ),
    textTheme: CustomTexts.darkTextTheme,
  );
}
