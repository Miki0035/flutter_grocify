import 'package:flutter/material.dart';
import 'package:grocify/core/constants/colors.dart';

class GLoginButton extends StatelessWidget {
  const GLoginButton({super.key, this.onTap, required this.buttonText});
  final String buttonText;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: .symmetric(vertical: 12, horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: .circular(15),
          border: .all(color: GrocifyBrand.greenSoft, width: 0.2),
          color: GrocifyDarkColors.background,
        ),
        child: Row(
          mainAxisAlignment: .spaceBetween,
          crossAxisAlignment: .center,
          children: [
            SizedBox(
              child: Row(
                children: [
                  Icon(Icons.import_contacts_outlined),
                  SizedBox(width: 8),
                  Text(
                    buttonText,
                    style: TextStyle(color: GrocifyBrand.white, fontSize: 16),
                  ),
                ],
              ),
            ),

            Icon(Icons.chevron_right, color: GrocifyBrand.greenSoft),
          ],
        ),
      ),
    );
  }
}
