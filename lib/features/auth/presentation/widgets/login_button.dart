import 'package:flutter/material.dart';
import 'package:grocify/core/constants/colors.dart';

class GLoginButton extends StatelessWidget {
  const GLoginButton({
    super.key,
    this.onTap,
    required this.buttonText,
    required this.icon,
  });
  final String buttonText;
  final String icon;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    final iconColor = Theme.of(context).colorScheme.primary;
    final backgroundColor = Theme.of(context).colorScheme.surface;
    final textColor = Theme.of(context).colorScheme.onSurface;
    final borderColor = Theme.of(context).colorScheme.outlineVariant;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: .symmetric(vertical: 10, horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: .circular(15),
          border: .all(color: borderColor, width: 0.2),
          color: backgroundColor,
        ),
        child: Row(
          mainAxisAlignment: .spaceBetween,
          crossAxisAlignment: .center,
          children: [
            SizedBox(
              child: Row(
                children: [
                  Container(
                    padding: .all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: .circular(50),
                    ),
                    child: Image.asset(
                      icon,
                      width: 20,
                      height: 20,
                      fit: .cover,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    buttonText,
                    style: TextStyle(color: textColor, fontSize: 16),
                  ),
                ],
              ),
            ),

            Icon(Icons.chevron_right, color: iconColor),
          ],
        ),
      ),
    );
  }
}
