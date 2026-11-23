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
        padding: .symmetric(horizontal: 14, vertical: 24),
        child: Column(
          children: [
            Container(
              padding: .all(24),
              decoration: BoxDecoration(
                border: .all(color: GrocifyBrand.greenDark),
                color: GrocifyBrand.white,
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
            Text('BUILD YOUR LIST', style: TextStyle(fontSize: GSize.fontMd)),
            Text(
              'Add Items with the right quality, category and urgency.',
              style: TextStyle(fontSize: GSize.fontSm),
            ),

            Form(
              child: Container(
                padding: .all(14),
                decoration: BoxDecoration(
                  border: .all(color: GrocifyBrand.green),
                ),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Item name",
                        hintText: 'Ex: Blueberries',
                        hintStyle: TextStyle(fontWeight: .w200),
                        prefixIconColor: Colors.grey,
                        prefixIcon: Icon(Icons.shopping_bag_outlined, size: 18),
                        border: OutlineInputBorder(
                          borderRadius: .circular(18),
                          borderSide: BorderSide(color: GrocifyBrand.green),
                        ),
                        fillColor: GrocifyBrand.greenSoft,
                      ),
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
