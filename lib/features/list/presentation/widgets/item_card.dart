import 'package:flutter/material.dart';
import 'package:grocify/core/constants/colors.dart';
import 'package:grocify/features/list/presentation/widgets/add_remove_button.dart';
import 'package:grocify/features/list/presentation/widgets/chip.dart';

class GItemCard extends StatelessWidget {
  const GItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(vertical: 18, horizontal: 10),
      decoration: BoxDecoration(
        color: GrocifyBrand.white,
        border: .all(color: GrocifyBrand.green),
        borderRadius: .circular(15),
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
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: .circular(50),
                  color: GrocifyBrand.white,
                  border: .all(color: GrocifyBrand.greenLight),
                ),
              ),

              SizedBox(width: 10),

              Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    'Eggs',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: .w600,
                    ),
                  ),
                  SizedBox(height: 8),
                  GChip(
                    backgroundColor: Colors.green.shade100,
                    child: Text(
                      "Diary",
                      style: TextStyle(
                        color: Colors.black87,

                        fontSize: 10,
                        fontWeight: .w600,
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

          // LEFT DELETE + PRIORITY
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
