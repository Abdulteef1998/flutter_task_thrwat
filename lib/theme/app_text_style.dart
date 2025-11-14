import 'package:flutter/material.dart'; // ضروري للوصول إلى Colors.white

abstract class AppTextStyle {
  // ==================== 24 ====================
  static TextStyle regular24({Color? color}) => TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,

    color: color ?? Colors.white,
  );
  static TextStyle medium24({Color? color}) => TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,

    color: color ?? Colors.white,
  );
  static TextStyle semiBold24({Color? color}) => TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,

    color: color ?? Colors.white,
  );
  static TextStyle bold24({Color? color}) => TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,

    color: color ?? Colors.white,
  );
  static TextStyle bold20({Color? color}) => TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,

    color: color ?? Colors.white,
  );

  // ==================== 18 ====================
  static TextStyle regular18({Color? color}) => TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,

    color: color ?? Colors.white,
  );
  static TextStyle medium18({Color? color}) => TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,

    color: color ?? Colors.white,
  );
  static TextStyle semiBold18({Color? color}) => TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,

    color: color ?? Colors.white,
  );
  static TextStyle bold18({Color? color}) => TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,

    color: color ?? Colors.white,
  );

  // ==================== 16 ====================
  static TextStyle regular16({Color? color}) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,

    color: color ?? Colors.white,
  );
  static TextStyle medium16({Color? color}) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,

    color: color ?? Colors.white,
  );
  static TextStyle semiBold16({Color? color}) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,

    color: color ?? Colors.white,
  );
  static TextStyle bold16({Color? color}) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,

    color: color ?? Colors.white,
  );

  // ==================== 12 ====================
  static TextStyle regular12({Color? color}) => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,

    color: color ?? Colors.white,
  );
  static TextStyle medium12({Color? color}) => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,

    color: color ?? Colors.white,
  );
  static TextStyle semiBold12({Color? color}) => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,

    color: color ?? Colors.white,
  );
  static TextStyle bold12({Color? color}) => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,

    color: color ?? Colors.white,
  );
}
