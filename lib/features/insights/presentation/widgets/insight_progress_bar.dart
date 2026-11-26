import 'package:flutter/material.dart';
import 'package:grocify/core/constants/colors.dart';
import 'package:grocify/core/constants/sizes.dart';

class GInsightProgressIndicator extends StatelessWidget {
  const GInsightProgressIndicator({
    super.key,
    required this.borderColor,
    required this.primaryColor,
    required this.type,
    required this.amount,
    this.hasPadding = false,
    this.hasBorder = false,
    this.padding = 4,
    required this.value,
  });

  final String type;
  final String amount;
  final double value;

  final Color borderColor;
  final Color primaryColor;

  final bool hasPadding;
  final bool hasBorder;

  final double padding;

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(
      context,
    ).colorScheme.primary.withValues(alpha: 0.7);

    return Padding(
      padding: .symmetric(vertical: padding),
      child: Container(
        padding: hasPadding ? .all(12) : null,
        decoration: hasBorder
            ? BoxDecoration(
                border: .all(color: borderColor, width: 2),
                borderRadius: .circular(18),
              )
            : null,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(type, style: TextStyle(fontWeight: .w700)),

                Text(
                  amount,
                  style: TextStyle(
                    fontSize: GSize.fontMd,
                    color: textColor,
                    fontWeight: .w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              borderRadius: .circular(50),
              minHeight: 10,
              backgroundColor: GrocifyBrand.greenSoft,
            ),
          ],
        ),
      ),
    );
  }
}
