import 'package:flutter/material.dart';

class TextStyles {

  static Color color = Color(0xFF1A202C);

  // Headline
  static TextStyle headlineLarge = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w700,
    color: color
  );

  static TextStyle headlineMedium = headlineLarge.copyWith(
    fontSize: 40
  );

  static TextStyle headlineSmall = headlineLarge.copyWith(
    fontSize: 32
  );

  // Display
  static TextStyle displayLarge = headlineSmall.copyWith(
    fontSize: 24
  );

  static TextStyle displayMedium = displayLarge.copyWith(
    fontSize: 20
  );

  static TextStyle displaySmall = displayLarge.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w400
  );

  // Label
  static TextStyle labelLarge = displaySmall.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.w700
  );

  static TextStyle labelMedium = labelLarge.copyWith(
    fontWeight: FontWeight.w500
  );
  static TextStyle labelSmall = labelLarge.copyWith(
    fontWeight: FontWeight.w400
  );

  // Title
  static TextStyle titleLarge = labelSmall.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w500
  );

  static TextStyle titleMedium = titleLarge.copyWith(
    fontSize: 12
  );

  static TextStyle titleSmall = titleLarge.copyWith(
    fontSize: 10
  );

  // Body
  static TextStyle bodyLarge = titleSmall.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w700
  );

  static TextStyle bodyMedium = bodyLarge.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w400
  );

  static TextStyle bodySmall = bodyLarge.copyWith(
    fontSize: 10,
    fontWeight: FontWeight.w400
  );

}