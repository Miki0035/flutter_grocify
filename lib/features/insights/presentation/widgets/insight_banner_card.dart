import 'package:flutter/material.dart';
import 'package:grocify/core/constants/sizes.dart';

class GInsightUserInfo extends StatelessWidget {
  const GInsightUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final surface = Theme.of(context).colorScheme.surface;
    final textColor = Theme.of(context).colorScheme.onSurface;

    final borderColor = Theme.of(context).colorScheme.outlineVariant;
    return Container(
      padding: .symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: surface,
        border: .all(color: borderColor),
        borderRadius: .circular(20),
      ),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          // PROFILE AVATAR + PROFILE DATA
          Row(
            children: [
              // PROFILE AVATAR
              Container(
                width: 48,
                height: 48,
                padding: .all(8),
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  borderRadius: .circular(18),
                ),
                child: Center(
                  child: Text(
                    'B',
                    style: TextStyle(
                      color: surface,
                      fontWeight: .w900,
                      fontSize: GSize.fontLg,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 14),
              // PROFILE DATA
              Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    'SIGNED IN AS',
                    style: TextStyle(
                      letterSpacing: 1.1,
                      fontSize: GSize.fontXs,
                      color: textColor.withValues(alpha: 0.7),
                    ),
                  ),
                  SizedBox(height: 4),

                  Text('Mikiyas Kebede', style: TextStyle(fontWeight: .w900)),
                  SizedBox(height: 4),

                  Text(
                    'testemail@gmail.com',
                    style: TextStyle(
                      fontWeight: .w600,
                      fontSize: GSize.fontXs,
                      color: textColor.withValues(alpha: 0.7),
                    ),
                  ),
                ],
              ),
            ],
          ),

          // LOGOUT BUTTON
          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
              backgroundColor: Colors.red.shade50,
              shape: RoundedRectangleBorder(borderRadius: .circular(8)),
            ),
            icon: Icon(Icons.logout, color: Colors.red.shade900),
          ),
        ],
      ),
    );
  }
}
