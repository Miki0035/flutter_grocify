import 'package:flutter/material.dart';

class GAddRemoveIconButton extends StatelessWidget {
  const GAddRemoveIconButton({super.key, required this.icon, this.onTap});

  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = Theme.of(context).colorScheme.outlineVariant;
    final borderColor = Theme.of(
      context,
    ).colorScheme.primary.withValues(alpha: 0.1);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: .all(8),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: .all(color: borderColor),
          borderRadius: .circular(12),
        ),
        child: Icon(icon, color: Colors.black, size: 14),
      ),
    );
  }
}
