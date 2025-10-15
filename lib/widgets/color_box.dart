import 'package:flutter/material.dart';

class ColorBox extends StatelessWidget {
  final Color color;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;

  const ColorBox({
    super.key,
    required this.color,
    this.width,
    this.height,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin ?? const EdgeInsets.all(6),
      decoration: BoxDecoration(color: color),
    );
  }
}
