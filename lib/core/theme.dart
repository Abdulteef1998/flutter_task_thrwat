import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryDark = Color(0xFF1C153B);
  static const Color accentPurple = Color(0xFF7B61FF);
  static const Color primaryColor = Color(0xFF2B0063);
  static const Color selectedOptionBackground = Color(0xFFBAB4FE);
  static const Color unselectedOptionBackground = Colors.white;
  static const Color selectedOptionText = Colors.black;
  static const Color unselectedOptionText = Colors.black;

  static const Color cardDark = Color(0xFF2A2055);
  static const Color headerBackground = Color(0xFF3F2D7D);
  static const Color white = Colors.white;
  static const Color white54 = Colors.white54;
  static const Color white70 = Colors.white70;
}

class AppTheme {
  static ThemeData get dark => ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColors.primaryDark,

    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColors.white),
      bodyMedium: TextStyle(color: AppColors.white),
      titleLarge: TextStyle(color: AppColors.white),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.primaryDark,
        textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    ),
  );
}
