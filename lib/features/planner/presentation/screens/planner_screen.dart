import 'package:flutter/material.dart';
import 'package:grocify/core/constants/colors.dart';
import 'package:grocify/core/constants/sizes.dart';
import 'package:grocify/features/planner/presentation/widgets/activity_card.dart';

class PlannerScreen extends StatelessWidget {
  const PlannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: .all(24),
        child: Column(
          children: [
            Container(
              padding: .all(24),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: .circular(18),
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
                              style: TextStyle(fontWeight: .w100),
                            ),
                            SizedBox(height: 8),

                            Text(
                              'Plan smarter, shop \ncalmer.',
                              style: TextStyle(fontWeight: .w800, fontSize: 24),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'Organize your next grocery run with categories,\n'
                              'quantities,and priority in one place',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black.withValues(alpha: 0.8),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // RIGHT
                      IconButton(
                        iconSize: 24,
                        constraints: BoxConstraints(minWidth: 24),
                        style: IconButton.styleFrom(
                          backgroundColor: GrocifyBrand.greenDark,
                          padding: .all(8),
                          shape: RoundedRectangleBorder(
                            borderRadius: .circular(8),
                          ),
                        ),
                        onPressed: () {},
                        icon: Icon(
                          Icons.auto_fix_high,
                          color: GrocifyBrand.white,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 12),

                  // CARD COTNAINER
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    crossAxisAlignment: .center,
                    children: [
                      GActivityCard(type: 'PENDING', amount: 5),
                      SizedBox(width: 8),
                      GActivityCard(type: 'HIGH PRIORITY', amount: 3),
                      SizedBox(width: 8),

                      GActivityCard(type: 'UNITS', amount: 25),
                    ],
                  ),
                ],
              ),
            ),

            // IMAGE CONTAINER
            SizedBox(height: 16),

            Row(
              children: [
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      'BUILD YOUR LIST',
                      style: TextStyle(fontSize: GSize.fontMd),
                    ),
                    Text(
                      'Add Items with the right quality, category and urgency.',
                      style: TextStyle(fontSize: GSize.fontSm),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 16),

            Form(
              child: Container(
                padding: .symmetric(horizontal: 14, vertical: 20),
                decoration: BoxDecoration(
                  border: .all(color: GrocifyBrand.green),
                  borderRadius: .circular(18),
                ),
                child: Column(
                  children: [
                    GTextFormField(
                      labelText: 'Item name',
                      hintText: 'Ex: Blueberries',
                      prefixIcon: Icons.shopping_bag,
                    ),
                    GTextFormField(
                      labelText: 'Quantity',
                      hintText: '1',
                      prefixIcon: Icons.numbers_outlined,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GTextFormField extends StatelessWidget {
  const GTextFormField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.prefixIcon,
  });

  final String labelText;
  final String hintText;
  final IconData prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            labelText,
            style: TextStyle(
              fontWeight: .w500,
              fontSize: GSize.fontMd,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8),
          TextFormField(
            decoration: InputDecoration(
              // labelText: labelText,
              hintText: hintText,
              hintStyle: TextStyle(fontWeight: .w200, color: Colors.grey),
              prefixIconColor: Colors.grey,
              prefixIcon: Icon(prefixIcon, size: 18),
              border: OutlineInputBorder(
                borderRadius: .circular(18),
                borderSide: BorderSide(color: GrocifyBrand.green),
              ),
              filled: true,
              fillColor: GrocifyBrand.greenSoft,
            ),
          ),
        ],
      ),
    );
  }
}
