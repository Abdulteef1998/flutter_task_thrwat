import 'package:flutter/material.dart';

abstract class AppDecorations {
  static ShapeDecoration selectedAnswerBackgroundDecoration = ShapeDecoration(
    gradient: buildSecondryGradient(),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  );
  static ShapeDecoration notSelectedAnswerBackgroundDecoration =
      ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      );

  static BoxDecoration mainBackgroundDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0xff060B26), Color(0xff1A1F37)],
    ),
  );
  static LinearGradient buildSecondryGradient() => LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xffB8B2FF), Color(0xffC6C2F8)],
  );
}
