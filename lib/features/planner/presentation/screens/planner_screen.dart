import 'package:flutter/material.dart';
import 'package:grocify/core/constants/sizes.dart';
import 'package:grocify/features/planner/presentation/widgets/form/planner_form.dart';
import 'package:grocify/features/planner/presentation/widgets/planner_banner.dart';

class PlannerScreen extends StatelessWidget {
  const PlannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final backgroundColor = Theme.of(
      context,
    ).colorScheme.outlineVariant.withValues(alpha: 0.2);

    final textColor = Theme.of(
      context,
    ).colorScheme.primary.withValues(alpha: 0.8);

    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: backgroundColor),
          padding: .all(24),
          child: Column(
            children: [
              GPlannerBanner(),

              // IMAGE CONTAINER
              SizedBox(height: 16),

              Row(
                children: [
                  DefaultTextStyle(
                    style: TextStyle(color: textColor),
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          'BUILD YOUR LIST',
                          style: TextStyle(
                            fontSize: GSize.fontMd,
                            letterSpacing: 1.1,
                            fontWeight: .w900,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Add Items with the right quality, category and urgency.',
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 16),

              GPlanForm(),
            ],
          ),
        ),
      ),
    );
  }
}
