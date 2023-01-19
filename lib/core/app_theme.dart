import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static ThemeData light = ThemeData(
    primaryColor: Colors.amberAccent,
    primarySwatch: Colors.amber,
    brightness: Brightness.light,
    fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
    textTheme: TextTheme(
      displayLarge: GoogleFonts.spaceGrotesk(fontSize: 96, fontWeight: FontWeight.w300, letterSpacing: -1.5),
      displayMedium: GoogleFonts.spaceGrotesk(fontSize: 60, fontWeight: FontWeight.w300, letterSpacing: -0.5),
      displaySmall: GoogleFonts.spaceGrotesk(fontSize: 48, fontWeight: FontWeight.w400),
      headlineMedium: GoogleFonts.spaceGrotesk(fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      headlineSmall: GoogleFonts.spaceGrotesk(fontSize: 24, fontWeight: FontWeight.w400),
      titleLarge: GoogleFonts.spaceGrotesk(fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
      titleMedium: GoogleFonts.spaceGrotesk(fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
      titleSmall: GoogleFonts.spaceGrotesk(fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
      bodyLarge: GoogleFonts.spaceGrotesk(fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
      bodyMedium: GoogleFonts.spaceGrotesk(fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      labelLarge: GoogleFonts.spaceGrotesk(fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
      bodySmall: GoogleFonts.spaceGrotesk(fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
      labelSmall: GoogleFonts.spaceGrotesk(fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
    ).apply(
      bodyColor: Colors.black,
      displayColor: Colors.black,
    ),
  );

  static ThemeData dark = ThemeData(
    primaryColor: Colors.amberAccent,
    primarySwatch: Colors.amber,
    brightness: Brightness.dark,
    fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
    textTheme: TextTheme(
      displayLarge: GoogleFonts.spaceGrotesk(fontSize: 96, fontWeight: FontWeight.w300, letterSpacing: -1.5),
      displayMedium: GoogleFonts.spaceGrotesk(fontSize: 60, fontWeight: FontWeight.w300, letterSpacing: -0.5),
      displaySmall: GoogleFonts.spaceGrotesk(fontSize: 48, fontWeight: FontWeight.w400),
      headlineMedium: GoogleFonts.spaceGrotesk(fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      headlineSmall: GoogleFonts.spaceGrotesk(fontSize: 24, fontWeight: FontWeight.w400),
      titleLarge: GoogleFonts.spaceGrotesk(fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
      titleMedium: GoogleFonts.spaceGrotesk(fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
      titleSmall: GoogleFonts.spaceGrotesk(fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
      bodyLarge: GoogleFonts.spaceGrotesk(fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
      bodyMedium: GoogleFonts.spaceGrotesk(fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      labelLarge: GoogleFonts.spaceGrotesk(fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
      bodySmall: GoogleFonts.spaceGrotesk(fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
      labelSmall: GoogleFonts.spaceGrotesk(fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
    ).apply(
      bodyColor: Colors.white,
      displayColor: Colors.white,
    ),
  );
}
