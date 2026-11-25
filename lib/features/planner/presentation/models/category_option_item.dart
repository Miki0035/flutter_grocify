import 'package:flutter/material.dart';

class CategoryOptionItem {
  final String value;
  final IconData icon;
  final IconData selectedIcon;

  const CategoryOptionItem({
    required this.value,
    required this.icon,
    required this.selectedIcon,
  });
}
