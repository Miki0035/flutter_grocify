import 'package:flutter/material.dart';
import 'package:grocify/core/constants/sizes.dart';
import 'package:grocify/features/planner/presentation/widgets/activity_card.dart';

class GInsightStats extends StatelessWidget {
  const GInsightStats({super.key});

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(
      context,
    ).colorScheme.onSurface.withValues(alpha: 0.6);
    return Row(
      spacing: 8,
      mainAxisAlignment: .spaceBetween,
      children: [
        GActivityCard(
          type: 'PENDING',
          typeFontColor: textColor,
          typeLetterSpacing: 2,
          amountfontSize: GSize.fontLg,
          amount: 5,
          icon: Icons.watch_later_outlined,
        ),
        GActivityCard(
          type: 'COMPLETED',
          typeFontColor: textColor,
          typeLetterSpacing: 2,
          amount: 3,
          icon: Icons.check,
          amountfontSize: GSize.fontLg,
        ),

        GActivityCard(
          type: 'TOTAL',
          typeFontColor: textColor,
          typeLetterSpacing: 2,
          amount: 25,
          icon: Icons.layers,
          amountfontSize: GSize.fontLg,
        ),
      ],
    );
  }
}
