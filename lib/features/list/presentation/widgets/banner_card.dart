import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocify/core/constants/colors.dart';

class GBannerCard extends StatelessWidget {
  @Preview()
  const GBannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: .infinity,
      padding: .all(14),
      decoration: BoxDecoration(
        color: GrocifyBrand.green,
        borderRadius: .circular(14),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            'TODAY',
            style: GoogleFonts.comfortaa(
              fontWeight: .w100,
              color: GrocifyBrand.white,
            ),
          ),

          Text(
            'Your Grocery Board',
            style: GoogleFonts.comfortaa(
              textStyle: TextStyle(
                fontWeight: .w800,
                fontSize: 24,
                color: GrocifyBrand.white,
              ),
            ),
          ),
          Text.rich(
            TextSpan(
              style: TextStyle(
                color: GrocifyBrand.white,
                fontSize: 12,
                fontWeight: .w100,
              ),
              children: [
                TextSpan(text: '6 pending . '),
                TextSpan(text: '5 completed'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: LinearProgressIndicator(
              value: 50,
              color: GrocifyBrand.white,
              borderRadius: .circular(50),
              minHeight: 10,
              backgroundColor: GrocifyBrand.greenSoft,
            ),
          ),
        ],
      ),
    );
  }
}
