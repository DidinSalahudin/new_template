import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomColors {
  static const Color primaryColor = Color(0xFF6200EE);
  static const Color primaryVariantColor = Color(0xFF3700B3);
  static const Color secondaryColor = Color(0xFF03DAC6);
  static const Color secondaryVariantColor = Color(0xFF018786);
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const Color surfaceColor = Color(0xFFFFFFFF);
  static const Color errorColor = Color(0xFFB00020);
  static const Color onPrimaryColor = Color(0xFFFFFFFF);
  static const Color onSecondaryColor = Color(0xFF000000);
  static const Color onBackgroundColor = Color(0xFF000000);
  static const Color onSurfaceColor = Color(0xFF000000);
  static const Color onErrorColor = Color(0xFFFFFFFF);
  static const Color darkColor = Color(0xFF000000);
  static const Color lightColor = Color(0xFFFFFFFF);
}

class CustomTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: CustomColors.backgroundColor,
    backgroundColor: CustomColors.backgroundColor,
    brightness: Brightness.light,
    primaryColor: CustomColors.primaryColor,
    colorScheme: const ColorScheme(
      primary: CustomColors.primaryColor,
      primaryVariant: CustomColors.primaryVariantColor,
      secondary: CustomColors.secondaryColor,
      secondaryVariant: CustomColors.secondaryVariantColor,
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
    textTheme: CustomStyle.lightTextTheme,
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: CustomColors.backgroundColor,
    backgroundColor: CustomColors.backgroundColor,
    brightness: Brightness.light,
    primaryColor: CustomColors.primaryColor,
    colorScheme: const ColorScheme(
      primary: CustomColors.primaryColor,
      primaryVariant: CustomColors.primaryVariantColor,
      secondary: CustomColors.secondaryColor,
      secondaryVariant: CustomColors.secondaryVariantColor,
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
    textTheme: CustomStyle.darkTextTheme,
  );
}

class CustomStyle {
  static TextTheme lightTextTheme = TextTheme(
    headline1: _headline1,
    headline2: _headline2,
    headline3: _headline3,
    headline4: _headline4,
    bodyText1: _bodyText1,
  );

  static TextTheme darkTextTheme = TextTheme(
    headline1: _headline1,
    headline2: _headline2,
    headline3: _headline3,
    headline4: _headline4,
    bodyText1: _bodyText1,
  );

  static final TextStyle _headline1 = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: 24,
  );
  static final TextStyle _headline2 = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );
  static final TextStyle _headline3 = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );
  static final TextStyle _headline4 = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 14,
  );
  static final TextStyle _bodyText1 = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 12,
  );

  static const SystemUiOverlayStyle systemUiDark = SystemUiOverlayStyle(
    systemNavigationBarColor: CustomColors.primaryColor,
    statusBarColor: CustomColors.primaryColor,
    statusBarIconBrightness: Brightness.light,
  );

  static const SystemUiOverlayStyle systemUiLight = SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white,
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
  );

  static const SystemUiOverlayStyle systemUiTrans = SystemUiOverlayStyle(
    systemNavigationBarColor: CustomColors.primaryColor,
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  );
}
