import 'package:flutter/material.dart';
import 'package:grocify/core/constants/colors.dart';

class GActivityCard extends StatelessWidget {
  const GActivityCard({super.key, required this.type, required this.amount});

  final String type;
  final int amount;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: .all(12),
        decoration: BoxDecoration(
          border: .all(color: GrocifyBrand.green),
          borderRadius: .circular(18),
        ),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text(type, style: TextStyle(fontWeight: .w100, letterSpacing: 0.5)),
            Text('$amount', style: TextStyle(fontSize: 18, fontWeight: .w600)),
          ],
        ),
      ),
    );
  }
}
