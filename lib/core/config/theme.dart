import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomColors {
  static const Color primaryColor = Color(0xFF651CE5);
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const Color textPrimaryColor = Color(0xFF000000);
}

class CustomTheme {
  static ThemeData mainTheme = ThemeData(
    scaffoldBackgroundColor: CustomColors.backgroundColor,
    backgroundColor: CustomColors.backgroundColor,
    brightness: Brightness.light,
    primaryColor: CustomColors.primaryColor,
    textTheme: CustomStyle.lightTextTheme,
  );
}

class CustomStyle {
  static TextTheme lightTextTheme = TextTheme(
    headline1: _headline1,
    headline2: _headline2,
    headline3: _headline3,
    bodyText1: _bodyText1,
  );

  static final TextStyle _headline1 = GoogleFonts.poppins(
    color: CustomColors.textPrimaryColor,
    fontWeight: FontWeight.bold,
    fontSize: 24,
  );
  static final TextStyle _headline2 = GoogleFonts.poppins(
    color: CustomColors.textPrimaryColor,
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );
  static final TextStyle _headline3 = GoogleFonts.poppins(
    color: CustomColors.textPrimaryColor,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );
  static final TextStyle _bodyText1 = GoogleFonts.poppins(
    color: CustomColors.textPrimaryColor.withOpacity(0.6),
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
