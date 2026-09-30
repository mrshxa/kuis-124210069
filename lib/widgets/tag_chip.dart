import 'package:flutter/material.dart';

/// Chip kecil bergaya outline untuk types.
class TagChip extends StatelessWidget {
  final String label;
  final bool small;

  const TagChip({super.key, required this.label, this.small = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: small ? 8 : 12,
        vertical: small ? 4 : 8,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: small ? 11 : 13,
          fontWeight: FontWeight.w500,
          color: const Color.fromARGB(255, 49, 29, 225),
        ),
      ),
    );
  }
}
