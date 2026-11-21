import 'package:flutter/material.dart';
import 'package:grocify/core/constants/colors.dart';

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
              padding: .symmetric(vertical: 8, horizontal: 14),
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
                                color: GrocifyBrand.greenDark,
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
                    mainAxisAlignment: .spaceEvenly,
                    crossAxisAlignment: .center,
                    children: [
                      Expanded(
                        child: Container(
                          padding: .all(12),
                          decoration: BoxDecoration(
                            border: .all(color: GrocifyBrand.green),
                            borderRadius: .circular(18),
                          ),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              Text(
                                'PENDING',
                                style: TextStyle(
                                  fontWeight: .w100,
                                  letterSpacing: 0.5,
                                ),
                              ),
                              Text(
                                '6',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: .w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
