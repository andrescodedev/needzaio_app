///
/// This class allows us to set the principal theme of the app.
///

import 'package:flutter/material.dart';
import 'package:needzaio_app/core/routes/addresses_route.dart';

class PrincipalTheme {
  ThemeData mainTheme() {
    return ThemeData(
      primaryColor: PrincipalConstants.COLORONE,
      accentColor: PrincipalConstants.COLORONE,
      textTheme: TextTheme(
        headline1: GoogleFonts.montserrat(
          color: PrincipalConstants.COLORFIVE,
          fontSize: 35.0,
          fontWeight: FontWeight.bold,
        ),
        headline2: GoogleFonts.montserrat(
          color: PrincipalConstants.COLORFIVE,
          fontSize: 18.0,
          fontWeight: FontWeight.w900,
        ),
        headline3: GoogleFonts.montserrat(
          color: PrincipalConstants.COLORFIVE,
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
        ),
        headline4: GoogleFonts.montserrat(
          color: PrincipalConstants.COLORTWO,
          fontSize: 35.0,
          fontWeight: FontWeight.bold,
        ),
        headline5: GoogleFonts.montserrat(
          color: PrincipalConstants.COLORTWO,
          fontSize: 18.0,
          fontWeight: FontWeight.w200,
        ),
        headline6: GoogleFonts.montserrat(
          color: PrincipalConstants.COLORTWO,
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
        ),
        bodyText1: GoogleFonts.montserrat(
          color: PrincipalConstants.COLORTHREE,
          fontSize: 10.0,
          fontWeight: FontWeight.bold,
        ),
        bodyText2: GoogleFonts.montserrat(
          color: PrincipalConstants.COLORTHREE,
          fontSize: 8.0,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
