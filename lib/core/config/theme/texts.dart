import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTexts {
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
}
