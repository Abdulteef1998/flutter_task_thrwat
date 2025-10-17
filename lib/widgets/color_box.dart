import 'package:flutter/material.dart';

class ColorBox extends StatelessWidget {
  final Color? color;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final BoxBorder? border;
  final BorderRadiusGeometry? borderRadius;
  final List<BoxShadow>? boxShadow;
  final Gradient? gradient;
  final AlignmentGeometry? alignment;
  final BoxShape shape;
  final String? text; // ✅ نص اختياري داخل الصندوق
  final TextStyle? textStyle; // ✅ لتخصيص شكل النص
  final Widget? child; // ✅ لو تريد تمرر ويدجت مخصص بدل النص

  const ColorBox({
    super.key,
    this.color,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.border,
    this.borderRadius,
    this.boxShadow,
    this.gradient,
    this.alignment,
    this.shape = BoxShape.rectangle,
    this.text,
    this.textStyle,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      alignment: alignment ?? Alignment.center,
      decoration: BoxDecoration(
        color: color,
        border: border,
        borderRadius: shape == BoxShape.rectangle ? borderRadius : null,
        boxShadow: boxShadow,
        gradient: gradient,
        shape: shape,
      ),
      child:
          child ??
          (text != null
              ? Text(
                  text!,
                  style:
                      textStyle ??
                      TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                  textAlign: TextAlign.center,
                )
              : null),
    );
  }
}
