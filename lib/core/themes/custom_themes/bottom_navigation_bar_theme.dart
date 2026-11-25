import 'package:flutter/material.dart';
import 'package:grocify/core/constants/colors.dart';

abstract final class GBottomNavigationBarTheme {
  static final lightBottomNavigationBarTheme = NavigationBarThemeData(
    backgroundColor: GrocifyLightColors.background,
    indicatorColor: GrocifyLightColors.primary.withValues(alpha: 0.15),
    iconTheme: WidgetStateProperty.resolveWith<IconThemeData?>((
      Set<WidgetState> states,
    ) {
      if (states.contains(WidgetState.selected)) {
        return IconThemeData(color: GrocifyLightColors.primary);
      }
      return IconThemeData(color: GrocifyLightColors.black);
    }),
    labelTextStyle: WidgetStateProperty.resolveWith<TextStyle?>((
      Set<WidgetState> states,
    ) {
      if (states.contains(WidgetState.selected)) {
        return TextStyle(color: GrocifyLightColors.primary);
      }

      return TextStyle(color: GrocifyLightColors.black);
    }),
  );

  static const darkBottomNavigationBarTheme = BottomNavigationBarThemeData(
    backgroundColor: GrocifyDarkColors.background,
    selectedIconTheme: IconThemeData(color: GrocifyBrand.greenLight),
    unselectedIconTheme: IconThemeData(color: GrocifyLightColors.background),
  );
}
