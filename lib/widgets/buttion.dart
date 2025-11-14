import 'package:flutter/material.dart';
import 'package:quiz_app/theme/app_color.dart';
import 'package:quiz_app/theme/app_text_style.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double width;
  final double borderRadius;
  final EdgeInsetsGeometry padding;

  const CustomButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.width = 300,
    this.borderRadius = 12,
    this.padding = const EdgeInsets.symmetric(horizontal: 26, vertical: 14),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: padding,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(text, style: AppTextStyle.bold20(color: AppColor.primary)),
          ],
        ),
      ),
    );
  }
}
