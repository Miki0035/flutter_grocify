import 'package:flutter/material.dart';

/// Grocify brand colors shared across themes.
abstract final class GrocifyBrand {
  static const Color green = Color(0xFF248A49);
  static const Color greenDark = Color(0xFF0DD667);
  static const Color greenLight = Color(0xFF70DB92);
  static const Color greenSoft = Color(0xFFD3F7E4);

  static const Color white = Color(0xFFFFFFFF);
}

/// Grocify Dark Theme
abstract final class GrocifyDarkColors {
  // Backgrounds
  static const Color background = Color(0xFF0D1E16);
  static const Color surface = Color(0xFF16271D);
  static const Color card = Color(0xFF1C3228);
  static const Color elevated = Color(0xFF243D30);

  // Primary
  static const Color primary = Color(0xFF0DD667);
  static const Color primaryLight = Color(0xFF70DB92);
  static const Color primaryDark = Color(0xFF0A9449);
  static const Color primaryContainer = Color(0xFF194336);

  // Text
  static const Color textPrimary = Color(0xFFF4FBF5);
  static const Color textSecondary = Color(0xFFA8B8AC);
  static const Color textDisabled = Color(0xFF66766B);

  // Borders and dividers
  static const Color border = Color(0xFF33483C);
  static const Color divider = Color(0xFF263A32);

  // Semantic colors
  static const Color success = Color(0xFF70DB92);
  static const Color error = Color(0xFFFF6B6B);
  static const Color warning = Color(0xFFFFC56E);
  static const Color info = Color(0xFF70B8FF);

  // Components
  static const Color inputBackground = Color(0xFF1B2F26);
  static const Color buttonText = Color(0xFF062515);
  static const Color bottomNavigation = Color(0xFF101F17);
}

/// Grocify Light Theme
abstract final class GrocifyLightColors {
  // Backgrounds
  static const Color background = Color(0xFFFFFFFF);
  static const Color surface = Color(0xFFF4FBF5);
  static const Color card = Color(0xFFEEF8F1);
  static const Color elevated = Color(0xFFE6F9EE);

  // Primary
  static const Color primary = Color(0xFF019746);
  static const Color primaryLight = Color(0xFF3BAC71);
  static const Color primaryDark = Color(0xFF08783C);
  static const Color primaryContainer = Color(0xFFD3F7E4);

  // Text
  static const Color textPrimary = Color(0xFF10251A);
  static const Color textSecondary = Color(0xFF64776A);
  static const Color textDisabled = Color(0xFFA8B8AC);

  // Borders and dividers
  static const Color border = Color(0xFFD3E9D9);
  static const Color divider = Color(0xFFE4F2E9);

  // Semantic colors
  static const Color success = Color(0xFF15934E);
  static const Color error = Color(0xFFE54848);
  static const Color warning = Color(0xFFD99527);
  static const Color info = Color(0xFF2685D5);

  // Components
  static const Color inputBackground = Color(0xFFEEF8F1);
  static const Color buttonText = Color(0xFFFFFFFF);
  static const Color bottomNavigation = Color(0xFFF4FBF5);
}
