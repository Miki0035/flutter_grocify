import 'package:flutter/material.dart';
import 'package:grocify/core/constants/colors.dart';
import 'package:grocify/core/constants/sizes.dart';
import 'package:grocify/features/list/presentation/widgets/add_remove_button.dart';
import 'package:grocify/features/list/presentation/widgets/chip.dart';

class GItemCard extends StatelessWidget {
  const GItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    final borderColor = Theme.of(context).colorScheme.outlineVariant;
    final backgroundColor = Theme.of(context).colorScheme.surface;
    final chipTextColor = Theme.of(context).colorScheme.primary;

    return Container(
      padding: .symmetric(vertical: 18, horizontal: 14),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: .all(color: borderColor, width: 2),
        borderRadius: .circular(20),
      ),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        crossAxisAlignment: .start,
        children: [
          // RIGHT
          Row(
            crossAxisAlignment: .start,
            children: [
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: .circular(50),
                  color: GrocifyBrand.white,
                  border: .all(color: borderColor, width: 2),
                ),
              ),

              SizedBox(width: 10),

              Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    'Eggs',
                    style: TextStyle(
                      fontSize: GSize.fontMd,
                      color: Colors.black,
                      fontWeight: .w600,
                    ),
                  ),
                  SizedBox(height: 10),
                  GChip(
                    backgroundColor: borderColor.withValues(alpha: 0.5),
                    child: Text(
                      "Diary",
                      style: TextStyle(
                        color: chipTextColor,

                        fontSize: 12,
                        fontWeight: .w700,
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: .center,
                    children: [
                      GAddRemoveIconButton(icon: Icons.remove),
                      SizedBox(width: 14),
                      Text(
                        '2',
                        style: TextStyle(
                          fontWeight: .w700,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 14),

                      GAddRemoveIconButton(icon: Icons.add),
                    ],
                  ),
                ],
              ),
            ],
          ),

          // LEFT PRIORITY + DELETE
          Row(
            children: [
              GChip(
                backgroundColor: Colors.red.shade50,
                child: Text(
                  "HIGH",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 14,
                    fontWeight: .w600,
                  ),
                ),
              ),

              SizedBox(width: 10),

              IconButton(
                iconSize: 18,
                constraints: BoxConstraints(minWidth: 18),
                style: IconButton.styleFrom(
                  backgroundColor: Colors.red.shade50,
                  padding: .symmetric(vertical: 4, horizontal: 8),
                  shape: RoundedRectangleBorder(borderRadius: .circular(8)),
                ),
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.red),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
