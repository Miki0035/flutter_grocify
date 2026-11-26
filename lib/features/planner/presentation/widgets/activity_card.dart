import 'package:flutter/material.dart';
import 'package:grocify/core/constants/sizes.dart';

class GActivityCard extends StatelessWidget {
  const GActivityCard({
    super.key,
    required this.type,
    required this.amount,
    this.icon,
    this.amountfontSize = GSize.fontMd,
    this.typeLetterSpacing,
    this.typeFontColor,
  });

  final String type;
  final int amount;
  final IconData? icon;
  final double amountfontSize;
  final double? typeLetterSpacing;
  final Color? typeFontColor;

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(
      context,
    ).colorScheme.primary.withValues(alpha: 0.8);
    final borderColor = Theme.of(context).colorScheme.outlineVariant;

    final iconColor = Theme.of(context).colorScheme.onPrimary;
    final iconBgColor = Theme.of(
      context,
    ).colorScheme.primary.withValues(alpha: 0.7);

    return Expanded(
      child: Container(
        padding: .all(12),
        decoration: BoxDecoration(
          border: .all(color: borderColor, width: 2),
          borderRadius: .circular(18),
        ),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            if (icon != null)
              Padding(
                padding: .symmetric(vertical: 8),
                child: Container(
                  padding: .all(8),
                  decoration: BoxDecoration(
                    color: iconBgColor,
                    border: .all(color: borderColor),
                    borderRadius: .circular(50),
                  ),
                  child: Icon(icon, color: iconColor, size: 18),
                ),
              ),
            Text(
              type,
              style: TextStyle(
                color: typeFontColor ?? textColor,
                fontWeight: .w700,
                fontSize: GSize.fontSm,
                letterSpacing: typeLetterSpacing,
              ),
            ),
            SizedBox(height: 12),
            Text(
              '$amount',
              style: TextStyle(fontSize: amountfontSize, fontWeight: .w600),
            ),
          ],
        ),
      ),
    );
  }
}
