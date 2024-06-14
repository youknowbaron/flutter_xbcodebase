// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: unused_field

import 'package:flutter/material.dart';

typedef $colors = _AppColors;
typedef $styles = _AppTextStyle;
typedef $radiues = _AppRadius;
typedef $borderRadius = _AppBorderRadius;
typedef $icons = Icons;

class _AppColors {
  // Light Theme
  static const primary = Color(0xFF57CA44);
  static const secondary = Color(0xFF59ACB2);
  static const tertiary = Color(0xFF7D5260);
  static const error = Color(0xFFB3261E);

  static const background = Color(0xFFFFFFFF);
  static const surface = Color(0xFFE7E0EC);

  /// Equals to [context.colorScheme.onSurface]
  static const text = Color(0xFF000000);

  /// Equals to [context.colorScheme.onSurfaceVariant]
  static const secondaryText = Color(0x80000000);

  static const disabled = Color(0xFF666666);

  /// Equals to [context.colorScheme.outline]
  static const border = Color(0x80000000);

  /// Equals to [context.colorScheme.outlineVariant]
  static const divider = Color(0xFFF1F1F1);

  // Dark theme
  static const dprimary = Color(0xFF57CA44);
  static const dsecondary = Color(0xFF59ACB2);
  static const dtertiary = Color(0xFFEFB8C8);
  static const derror = Color(0xFFF2B8B5);

  static const dbackground = Color(0xFF1C1B1F);
  static const dsurface = Color(0xFF49454F);

  /// Equals to [context.colorScheme.onSurface]
  static const dtext = Color(0xFFFFFFFF);

  /// Equals to [context.colorScheme.onSurfaceVariant]
  static const dsecondaryText = Color(0x80FFFFFF);

  /// Equals to [context.colorScheme.outline]
  static const dborder = Color(0x80FFFFFF);

  /// Equals to [context.colorScheme.outlineVariant]
  static const ddivider = Color(0x40FFFFFF);
}

@immutable
class _AppTextStyle {
  static const TextStyle body12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle body14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle body16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle body18 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.5,
  );

  static const TextStyle body22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static const TextStyle title14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle title16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle header18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle header20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle header22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle headline28 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );
}

extension TextStyleX on TextStyle {
  TextStyle colour(Color color) {
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
