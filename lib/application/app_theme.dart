import 'package:memorise_vocabulary/bridges.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
        // primarySwatch: Colors.deepOrange,
        brightness: Brightness.light,
        useMaterial3: true,
        // fontFamily: FontFamily.notosansJP,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: $colors.primary,
          onPrimary: $colors.surface,
          secondary: $colors.secondary,
          onSecondary: $colors.surface,
          error: $colors.error,
          onError: $colors.surface,
          surface: $colors.surface,
          onSurface: $colors.text,
          onSurfaceVariant: $colors.secondaryText,
          outline: $colors.border,
          outlineVariant: $colors.divider,
        ),
        appBarTheme: AppBarTheme(
          elevation: 5,
          shadowColor: Colors.black12,
          backgroundColor: $colors.background,
          surfaceTintColor: $colors.background,
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: $colors.primary,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: $colors.secondary,
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: $colors.primary,
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
            side: const BorderSide(color: $colors.primary),
          ),
        ),
      );

  static ThemeData get darkTheme => ThemeData(
        // primarySwatch: Colors.deepPurple,

        // this line may make dark theme look better
        applyElevationOverlayColor: true,
        brightness: Brightness.dark,
        useMaterial3: true,
        // fontFamily: FontFamily.notosansJP,
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: $colors.dprimary,
          onPrimary: $colors.dtext,
          secondary: $colors.dsecondary,
          onSecondary: $colors.dtext,
          error: $colors.derror,
          onError: $colors.dtext,
          surface: $colors.dsurface,
          onSurface: $colors.dtext,
          onSurfaceVariant: $colors.dsecondaryText,
          outline: $colors.dborder,
          outlineVariant: $colors.ddivider,
        ),
        appBarTheme: AppBarTheme(
          elevation: 5,
          backgroundColor: $colors.dbackground,
          surfaceTintColor: $colors.dbackground,
          shadowColor: Colors.white12,
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: $colors.primary,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: $colors.secondary,
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: $colors.primary,
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
            side: const BorderSide(color: $colors.primary),
          ),
        ),
      );
}
