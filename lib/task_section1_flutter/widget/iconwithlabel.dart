import 'package:flutter/material.dart';

class IconButtonWithLabel extends StatelessWidget {
  final IconData icon;
  final String? label;
  final Color? color;

  const IconButtonWithLabel({
    super.key,
    required this.icon,
    this.label,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final Color finalColor = color ?? Theme.of(context).primaryColor;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: finalColor, size: 28),
        if (label != null) ...[
          const SizedBox(height: 4),
          Text(
            label!,
            style: TextStyle(
              color: finalColor,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ],
    );
  }
}
