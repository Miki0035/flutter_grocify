import 'package:flutter/material.dart';
import 'package:grocify/core/constants/colors.dart';

class GBottomNavigationBarTheme {
  GBottomNavigationBarTheme._();

  static const lightBottomNavigationBarTheme = BottomNavigationBarThemeData(
    elevation: 4,
    backgroundColor: GrocifyLightColors.background,
    selectedIconTheme: IconThemeData(color: GrocifyBrand.greenLight),
    unselectedIconTheme: IconThemeData(color: Colors.black12),
  );

  static const darkBottomNavigationBarTheme = BottomNavigationBarThemeData(
    elevation: 4,

    backgroundColor: GrocifyDarkColors.background,
    selectedIconTheme: IconThemeData(color: GrocifyBrand.greenLight),
    unselectedIconTheme: IconThemeData(color: GrocifyLightColors.background),
  );
}
