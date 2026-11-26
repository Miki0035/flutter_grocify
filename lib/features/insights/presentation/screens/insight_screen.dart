import 'package:flutter/material.dart';
import 'package:grocify/core/constants/sizes.dart';
import 'package:grocify/features/insights/presentation/widgets/insight_banner_card.dart';
import 'package:grocify/features/insights/presentation/widgets/insight_priority_card.dart';
import 'package:grocify/features/insights/presentation/widgets/insight_progress_bar.dart';
import 'package:grocify/features/insights/presentation/widgets/insight_progress_container.dart';
import 'package:grocify/features/insights/presentation/widgets/insight_stats_container.dart';

class InsightScreen extends StatelessWidget {
  const InsightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Width Of Device
    final width = MediaQuery.sizeOf(context).width;

    final backgroundColor = Theme.of(
      context,
    ).colorScheme.outlineVariant.withValues(alpha: 0.2);

    final borderColor = Theme.of(context).colorScheme.outlineVariant;
    final primaryColor = Theme.of(context).colorScheme.primary;
    final onPrimaryColor = Theme.of(context).colorScheme.onPrimary;
    final surfaceColor = Theme.of(context).colorScheme.surface;

    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: .all(24),
          decoration: BoxDecoration(color: backgroundColor),
          child: Column(
            children: [
              GInsightUserInfo(),
              SizedBox(height: 24),

              GInsightStats(),
              SizedBox(height: 20),

              GInsightProgressIndicator(
                borderColor: borderColor,
                primaryColor: primaryColor,
                type: 'Completion rate',
                amount: '45%',
                hasBorder: true,
                hasPadding: true,
                padding: 8,
                value: 0.4,
              ),

              SizedBox(height: 20),

              GInsightProgressCategoryContainer(
                borderColor: borderColor,
                primaryColor: primaryColor,
              ),

              SizedBox(height: 18),

              GInsightPriorityCard(
                surfaceColor: surfaceColor,
                borderColor: borderColor,
                primaryColor: primaryColor,
              ),

              // CLEAR BUTTON
              Container(
                width: width * 0.8,
                padding: .symmetric(vertical: 32),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    padding: .symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(borderRadius: .circular(8)),
                  ),
                  child: Text(
                    'Clear completed items',
                    style: TextStyle(
                      color: onPrimaryColor,
                      fontSize: GSize.fontMd,
                      letterSpacing: 0.9,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
