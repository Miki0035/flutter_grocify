import 'package:flutter/material.dart';

class GChip extends StatelessWidget {
  const GChip({super.key, required this.child, required this.backgroundColor});

  final Widget child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(vertical: 4, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: .circular(10),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
