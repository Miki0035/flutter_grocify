import 'package:flutter/material.dart';
import 'package:grocify/core/constants/sizes.dart';

class GTextFormField extends StatelessWidget {
  const GTextFormField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.prefixIcon,
    required this.controller,
  });
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final IconData prefixIcon;

  @override
  Widget build(BuildContext context) {
    final borderColor = Theme.of(context).colorScheme.outlineVariant;
    final backgroundColor = Theme.of(
      context,
    ).colorScheme.outlineVariant.withValues(alpha: 0.6);
    return Padding(
      padding: .symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            labelText,
            style: TextStyle(
              fontWeight: .w700,
              fontSize: GSize.fontSm,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8),
          TextFormField(
            controller: controller,
            decoration: InputDecoration(
              // labelText: labelText,
              hintText: hintText,
              hintStyle: TextStyle(fontWeight: .w200, color: Colors.grey),
              prefixIcon: Icon(prefixIcon, size: 18),
              focusedBorder: OutlineInputBorder(
                borderRadius: .circular(16),
                borderSide: BorderSide(color: borderColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: .circular(16),
                borderSide: BorderSide(color: borderColor),
              ),
              filled: true,
              fillColor: backgroundColor,
            ),
          ),
        ],
      ),
    );
  }
}
