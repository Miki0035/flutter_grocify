import 'package:flutter/material.dart';
import 'package:grocify/features/planner/presentation/widgets/activity_card.dart';

class GPlannerBanner extends StatelessWidget {
  const GPlannerBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final backgroundColor = Theme.of(context).colorScheme.surface;
    final borderColor = Theme.of(context).colorScheme.outlineVariant;
    final iconBgColor = Theme.of(context).colorScheme.primary;
    final iconColor = Theme.of(context).colorScheme.onPrimary;
    final textColor = Theme.of(
      context,
    ).colorScheme.primary.withValues(alpha: 0.8);

    return Container(
      padding: .symmetric(vertical: 24, horizontal: 12),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: .circular(20),
        border: .all(color: borderColor, width: 2),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            crossAxisAlignment: .start,
            children: [
              // LEFT
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      'GROCERY PLANNER',
                      style: TextStyle(
                        fontWeight: .w100,
                        color: textColor.withValues(alpha: 1),
                      ),
                    ),
                    SizedBox(height: 8),

                    Text(
                      'Plan smarter, shop \ncalmer.',
                      style: TextStyle(fontWeight: .w900, fontSize: 24),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Organize your next grocery run with categories,\n'
                      'quantities,and priority in one place',
                      style: TextStyle(fontSize: 12, color: textColor),
                    ),
                  ],
                ),
              ),

              // RIGHT
              IconButton(
                iconSize: 24,
                constraints: BoxConstraints(minWidth: 24),
                style: IconButton.styleFrom(
                  backgroundColor: iconBgColor,
                  padding: .all(8),
                  shape: RoundedRectangleBorder(borderRadius: .circular(8)),
                ),
                onPressed: () {},
                icon: Icon(Icons.auto_fix_high, color: iconColor),
              ),
            ],
          ),

          SizedBox(height: 12),

          // CARD COTNAINER
          Row(
            spacing: 8,
            children: [
              GActivityCard(type: 'PENDING', amount: 5),
              GActivityCard(type: 'HIGH PRIORITY', amount: 3),

              GActivityCard(type: 'UNITS', amount: 25),
            ],
          ),
        ],
      ),
    );
  }
}
