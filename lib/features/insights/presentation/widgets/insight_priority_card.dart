import 'package:flutter/material.dart';
import 'package:grocify/core/constants/sizes.dart';
import 'package:grocify/core/common/widgets/chip.dart';

class GInsightPriorityCard extends StatelessWidget {
  const GInsightPriorityCard({
    super.key,
    required this.surfaceColor,
    required this.borderColor,
    required this.primaryColor,
  });

  final Color surfaceColor;
  final Color borderColor;
  final Color primaryColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(vertical: 18, horizontal: 14),
      decoration: BoxDecoration(
        color: surfaceColor,
        border: .all(color: borderColor, width: 2),
        borderRadius: .circular(20),
      ),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        crossAxisAlignment: .start,
        children: [
          // RIGHT
          Column(
            spacing: 5,
            crossAxisAlignment: .start,
            children: [
              Text(
                'High priority remanining',
                style: TextStyle(fontSize: GSize.fontSm, fontWeight: .w800),
              ),

              Text(
                '3',
                style: TextStyle(
                  fontSize: GSize.fontXl,
                  color: Colors.black,
                  fontWeight: .w800,
                ),
              ),
              Text(
                'Handle these first for a smoother trip.',
                style: TextStyle(
                  fontSize: GSize.fontSm,
                  color: primaryColor,
                  fontWeight: .w400,
                ),
              ),
            ],
          ),

          // RIGHT
          GChip(
            backgroundColor: Colors.red.shade50,
            child: Text(
              "ACTION",
              style: TextStyle(
                color: Colors.red,
                fontSize: GSize.fontXs,
                fontWeight: .w800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
