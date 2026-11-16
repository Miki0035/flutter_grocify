import 'package:flutter/material.dart';
import 'package:grocify/core/constants/colors.dart';

class GrocifyTheme {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: GrocifyLightColors.background,
    colorScheme: const ColorScheme.light(
      primary: GrocifyLightColors.primary,
      onPrimary: GrocifyLightColors.buttonText,
      secondary: GrocifyLightColors.primaryLight,
      surface: GrocifyLightColors.surface,
      error: GrocifyLightColors.error,
      onSurface: GrocifyLightColors.textPrimary,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: GrocifyBrand.greenLight,
      unselectedItemColor: GrocifyLightColors.background,
    ),
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: GrocifyDarkColors.background,
    colorScheme: const ColorScheme.dark(
      primary: GrocifyDarkColors.primary,
      onPrimary: GrocifyDarkColors.buttonText,
      secondary: GrocifyDarkColors.primaryLight,
      surface: GrocifyDarkColors.surface,
      error: GrocifyDarkColors.error,
      onSurface: GrocifyDarkColors.textPrimary,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: GrocifyBrand.greenLight,
      unselectedItemColor: GrocifyLightColors.background,
    ),
  );
}
