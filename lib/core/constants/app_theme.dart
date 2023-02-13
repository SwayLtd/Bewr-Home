/*
https://m2.material.io/design/platform-guidance/cross-platform-adaptation.html
https://www.youtube.com/watch?v=7bljwicODeY
.adaptive() on certain widgets > Slider, SwitchListTile, Switch, ActivityIndicator, AlertDialog and certain Icon
+ https://pub.dev/packages/adaptive_dialog
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static ThemeData light = ThemeData(
    primaryColor: Colors.amber,
    colorScheme: const ColorScheme.light(
      primary: Colors.amber,
      secondary: Colors.amberAccent,
      error: Colors.red,
      onPrimary: Colors.black,
    ),
    primarySwatch: Colors.amber,
    brightness: Brightness.light,
    fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
    disabledColor: Colors.black54,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      // https://stackoverflow.com/questions/52489458/how-to-change-status-bar-color-in-flutter
      systemOverlayStyle: SystemUiOverlayStyle(
        // statusBarColor: Colors.white, // Status bar color

        // Status bar brightness (optional)
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
      elevation: 0.5, // configure the separator line size under the AppBar
      color: Colors.white,
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.spaceGrotesk(
          fontSize: 96, fontWeight: FontWeight.w300, letterSpacing: -1.5,),
      displayMedium: GoogleFonts.spaceGrotesk(
          fontSize: 60, fontWeight: FontWeight.w300, letterSpacing: -0.5,),
      displaySmall:
          GoogleFonts.spaceGrotesk(fontSize: 48, fontWeight: FontWeight.w400),
      headlineMedium: GoogleFonts.spaceGrotesk(
          fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25,),
      headlineSmall:
          GoogleFonts.spaceGrotesk(fontSize: 24, fontWeight: FontWeight.w400),
      titleLarge: GoogleFonts.spaceGrotesk(
          fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 0.15,),
      titleMedium: GoogleFonts.spaceGrotesk(
          fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15,),
      titleSmall: GoogleFonts.spaceGrotesk(
          fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1,),
      bodyLarge: GoogleFonts.spaceGrotesk(
          fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5,),
      bodyMedium: GoogleFonts.spaceGrotesk(
          fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25,),
      labelLarge: GoogleFonts.spaceGrotesk(
          fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25,),
      bodySmall: GoogleFonts.spaceGrotesk(
          fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4,),
      labelSmall: GoogleFonts.spaceGrotesk(
          fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5,),
    ).apply(
      bodyColor: Colors.black,
      displayColor: Colors.black,
    ),
  );

  static ThemeData dark = ThemeData(
    primaryColor: Colors.amber,
    colorScheme: const ColorScheme.dark(
      primary: Colors.amber,
      secondary: Colors.amberAccent,
      surface: Colors.black54,
      background: Colors.black54,
      error: Colors.red,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
    ),
    primarySwatch: Colors.amber,
    brightness: Brightness.dark,
    fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
    disabledColor: Colors.white70,
    scaffoldBackgroundColor: Colors.black54,
    appBarTheme: const AppBarTheme(
      // https://stackoverflow.com/questions/52489458/how-to-change-status-bar-color-in-flutter
      systemOverlayStyle: SystemUiOverlayStyle(
        // statusBarColor: Colors.white, // Status bar color

        // Status bar brightness (optional)
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
      elevation: 0.5, // configure the separator line size under the AppBar
      color: Colors.white10,
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.spaceGrotesk(
          fontSize: 96, fontWeight: FontWeight.w300, letterSpacing: -1.5,),
      displayMedium: GoogleFonts.spaceGrotesk(
          fontSize: 60, fontWeight: FontWeight.w300, letterSpacing: -0.5,),
      displaySmall:
          GoogleFonts.spaceGrotesk(fontSize: 48, fontWeight: FontWeight.w400),
      headlineMedium: GoogleFonts.spaceGrotesk(
          fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25,),
      headlineSmall:
          GoogleFonts.spaceGrotesk(fontSize: 24, fontWeight: FontWeight.w400),
      titleLarge: GoogleFonts.spaceGrotesk(
          fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15,),
      titleMedium: GoogleFonts.spaceGrotesk(
          fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15,),
      titleSmall: GoogleFonts.spaceGrotesk(
          fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1,),
      bodyLarge: GoogleFonts.spaceGrotesk(
          fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5,),
      bodyMedium: GoogleFonts.spaceGrotesk(
          fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25,),
      labelLarge: GoogleFonts.spaceGrotesk(
          fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25,),
      bodySmall: GoogleFonts.spaceGrotesk(
          fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4,),
      labelSmall: GoogleFonts.spaceGrotesk(
          fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5,),
    ).apply(
      bodyColor: Colors.white,
      displayColor: Colors.white,
    ),
  );
}
