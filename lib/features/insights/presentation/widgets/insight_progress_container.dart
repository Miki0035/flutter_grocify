import 'package:flutter/material.dart';
import 'package:grocify/core/constants/colors.dart';
import 'package:grocify/features/insights/presentation/widgets/insight_progress_bar.dart';

class GInsightProgressCategoryContainer extends StatelessWidget {
  const GInsightProgressCategoryContainer({
    super.key,
    required this.borderColor,
    required this.primaryColor,
  });

  final Color borderColor;
  final Color primaryColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(12),
      decoration: BoxDecoration(
        border: .all(color: borderColor, width: 2),
        borderRadius: .circular(18),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text('Items by category', style: TextStyle(fontWeight: .w800)),

              Text(
                '5 GROUPS',
                style: TextStyle(color: primaryColor, letterSpacing: 1.1),
              ),
            ],
          ),
          SizedBox(height: 8),

          // DAIRY
          GInsightProgressIndicator(
            borderColor: borderColor,
            primaryColor: GrocifyLightColors.progressBlue,
            type: 'Dairy',
            amount: '3',
            value: 0.5,
          ),
          // PRODUCE
          GInsightProgressIndicator(
            borderColor: borderColor,
            primaryColor: GrocifyLightColors.progressGreen,
            type: 'Produce',
            amount: '2',
            value: 0.3,
          ),

          // SNACKS
          GInsightProgressIndicator(
            borderColor: borderColor,
            primaryColor: GrocifyLightColors.progressPink,
            type: 'Snacks',
            amount: '2',
            value: 0.7,
          ),
          // PANTRY
          GInsightProgressIndicator(
            borderColor: borderColor,
            primaryColor: GrocifyLightColors.progressPurple,
            type: 'Pantry',
            amount: '2',
            value: 0.6,
          ),
          // BACKERY
          GInsightProgressIndicator(
            borderColor: borderColor,
            primaryColor: GrocifyLightColors.progressAmber,
            type: 'Bakery',
            amount: '2',
            value: 0.3,
          ),
        ],
      ),
    );
  }
}
