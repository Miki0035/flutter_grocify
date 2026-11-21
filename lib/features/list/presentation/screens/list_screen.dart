import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:grocify/core/constants/colors.dart';
import 'package:grocify/features/list/presentation/widgets/add_remove_button.dart';
import 'package:grocify/features/list/presentation/widgets/banner_card.dart';
import 'package:grocify/features/list/presentation/widgets/chip.dart';
import 'package:grocify/features/list/presentation/widgets/item_card.dart';

class ListScreen extends StatelessWidget {
  @Preview(name: 'List screen')
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 24),
        child: Column(
          children: [
            // Banner
            GBannerCard(),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text(
                    'SHOPPING ITEMS',
                    style: TextStyle(color: GrocifyBrand.green, fontSize: 12),
                  ),

                  Text(
                    '6 active',
                    style: TextStyle(color: GrocifyBrand.green, fontSize: 12),
                  ),
                ],
              ),
            ),

            GItemCard(),
          ],
        ),
      ),
    );
  }
}
