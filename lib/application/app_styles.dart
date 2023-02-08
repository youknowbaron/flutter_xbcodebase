// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: unused_field

import 'package:flutter/material.dart';

typedef $colors = _AppColors;
typedef $styles = _AppTextStyle;
typedef $radiues = _AppRadius;
typedef $borderRadius = _AppBorderRadius;

class _AppColors {
  // Light Theme
  static const primary = Color(0xFF6750A4);
  static const secondary = Color(0xFF625B71);
  static const tertiary = Color(0xFF7D5260);
  static const error = Color(0xFFB3261E);

  static const background = Color(0xFFFFFFFF);
  static const surface = Color(0xFFE7E0EC);

  static const text = Color(0xFF000000);
  static const disabled = Color(0xFF666666);

  static const border = Color.fromARGB(255, 203, 128, 128);
  static const divider = Color(0xFFF1F1F1);

  // Dark theme
  static const dprimary = Color(0xFFD0BCFF);
  static const dsecondary = Color(0xFFCCC2DC);
  static const dtertiary = Color(0xFFEFB8C8);
  static const derror = Color(0xFFF2B8B5);

  static const dbackground = Color(0xFF1C1B1F);
  static const dsurface = Color(0xFF49454F);

  static const dtext = Color(0xFFFFFFFF);
}

@immutable
class _AppTextStyle {
  static const TextStyle body14 = TextStyle(
    color: $colors.text,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle title16 = TextStyle(
    color: $colors.text,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle header20 = TextStyle(
    color: $colors.text,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle headline28 = TextStyle(
    color: $colors.text,
    fontSize: 28,
    fontWeight: FontWeight.w500,
  );
}

extension TextStyleX on TextStyle {
  TextStyle color(Color color) {
    return copyWith(color: color);
  }

  TextStyle size(double size) {
    return copyWith(fontSize: size);
  }

  TextStyle weight(FontWeight weight) {
    return copyWith(fontWeight: weight);
  }
}

@immutable
class _AppRadius {
  static const r4 = Radius.circular(4);
  static const r8 = Radius.circular(8);
  static const r20 = Radius.circular(20);
}

@immutable
class _AppBorderRadius {
  static const br4 = BorderRadius.all(Radius.circular(4));
  static const br8 = BorderRadius.all(Radius.circular(8));
  static const br20 = BorderRadius.all(Radius.circular(20));
}
