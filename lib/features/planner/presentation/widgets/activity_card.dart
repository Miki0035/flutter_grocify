import 'package:flutter/material.dart';
import 'package:grocify/core/constants/colors.dart';

class GActivityCard extends StatelessWidget {
  const GActivityCard({super.key, required this.type, required this.amount});

  final String type;
  final int amount;

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(
      context,
    ).colorScheme.primary.withValues(alpha: 0.8);
    final borderColor = Theme.of(context).colorScheme.outlineVariant;

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
            Text(
              type,
              style: TextStyle(
                color: textColor,
                fontWeight: .w700,
                letterSpacing: 1,
              ),
            ),
            SizedBox(height: 12),
            Text('$amount', style: TextStyle(fontSize: 18, fontWeight: .w600)),
          ],
        ),
      ),
    );
  }
}
