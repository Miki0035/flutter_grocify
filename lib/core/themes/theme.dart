import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocify/core/constants/colors.dart';
import 'package:grocify/core/themes/custom_themes/bottom_navigation_bar_theme.dart';

class GrocifyTheme {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    textTheme: GoogleFonts.poppinsTextTheme(),
    scaffoldBackgroundColor: GrocifyLightColors.background,
    colorScheme: const ColorScheme.light(
      primary: GrocifyLightColors.primary,
      onPrimary: GrocifyLightColors.buttonText,
      secondary: GrocifyLightColors.primaryLight,
      surface: GrocifyLightColors.surface,
      error: GrocifyLightColors.error,
      onSurface: GrocifyLightColors.textPrimary,
    ),
    bottomNavigationBarTheme:
        GBottomNavigationBarTheme.lightBottomNavigationBarTheme,
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    textTheme: GoogleFonts.poppinsTextTheme(),
    scaffoldBackgroundColor: GrocifyDarkColors.background,
    colorScheme: const ColorScheme.dark(
      primary: GrocifyDarkColors.primary,
      onPrimary: GrocifyDarkColors.buttonText,
      secondary: GrocifyDarkColors.primaryLight,
      surface: GrocifyDarkColors.surface,
      error: GrocifyDarkColors.error,
      onSurface: GrocifyDarkColors.textPrimary,
    ),
    bottomNavigationBarTheme:
        GBottomNavigationBarTheme.darkBottomNavigationBarTheme,
  );
}
