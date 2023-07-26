import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headline2: GoogleFonts.montserrat(
      color: Colors.yellow,
    ),
    headline6: GoogleFonts.montserrat(
      color: Colors.black,
    ),
    subtitle2: GoogleFonts.poppins(color: Colors.black54, fontSize: 24),
  );
}
