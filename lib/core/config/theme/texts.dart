import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTexts {
  static TextTheme lightTextTheme = TextTheme(
    headline1: _headline1,
    headline2: _headline2,
    headline3: _headline3,
    headline4: _headline4,
    headline5: _headline5,
    headline6: _headline6,
    subtitle1: _subTitle1,
    subtitle2: _subTitle2,
    bodyText1: _bodyText1,
    bodyText2: _bodyText2,
    button: _button,
    caption: _caption,
    overline: _overline,
  );

  static TextTheme darkTextTheme = TextTheme(
    headline1: _headline1,
    headline2: _headline2,
    headline3: _headline3,
    headline4: _headline4,
    headline5: _headline5,
    headline6: _headline6,
    subtitle1: _subTitle1,
    subtitle2: _subTitle2,
    bodyText1: _bodyText1,
    bodyText2: _bodyText2,
    button: _button,
    caption: _caption,
    overline: _overline,
  );

  static final TextStyle _headline1 = GoogleFonts.poppins(
    fontWeight: FontWeight.w700,
    fontSize: 57,
  );
  static final TextStyle _headline2 = GoogleFonts.poppins(
    fontWeight: FontWeight.w700,
    fontSize: 45,
  );
  static final TextStyle _headline3 = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 36,
  );
  static final TextStyle _headline4 = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 28,
  );
  static final TextStyle _headline5 = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 24,
  );
  static final TextStyle _headline6 = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 22,
  );
  static final TextStyle _subTitle1 = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );
  static final TextStyle _subTitle2 = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );
  static final TextStyle _bodyText1 = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );
  static final TextStyle _bodyText2 = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );
  static final TextStyle _button = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );
  static final TextStyle _caption = GoogleFonts.poppins(
    fontWeight: FontWeight.w200,
    fontSize: 12,
  );
  static final TextStyle _overline = GoogleFonts.poppins(
    fontWeight: FontWeight.w200,
    fontSize: 11,
  );
}
