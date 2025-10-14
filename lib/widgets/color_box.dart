import 'package:flutter/material.dart';

class ColorBox extends StatelessWidget {
  final Color color;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin; // ✅ أضفنا خاصية margin اختيارية

  const ColorBox({
    super.key,
    required this.color,
    this.width,
    this.height,
    this.margin, // ✅ الآن يمكن تمريرها من الخارج
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin:
          margin ?? const EdgeInsets.all(6), // ✅ قيمة افتراضية 6 إن لم تُمرّر
      decoration: BoxDecoration(color: color),
    );
  }
}
