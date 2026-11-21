import 'package:flutter/material.dart';
import 'package:grocify/core/constants/colors.dart';

class GAddRemoveIconButton extends StatelessWidget {
  const GAddRemoveIconButton({super.key, required this.icon, this.onTap});

  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: .all(8),
        decoration: BoxDecoration(
          color: Colors.green.shade100,
          border: .all(color: GrocifyBrand.greenSoft),
          borderRadius: .circular(8),
        ),
        child: Icon(icon, color: Colors.black, size: 14),
      ),
    );
  }
}
