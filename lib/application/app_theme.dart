import 'package:xbcodebase/bridges.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        // primarySwatch: Colors.deepOrange,
        brightness: Brightness.light,
        useMaterial3: true,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: $colors.primary,
          onPrimary: $colors.text,
          secondary: $colors.secondary,
          onSecondary: $colors.text,
          error: $colors.error,
          onError: $colors.text,
          background: $colors.background,
          onBackground: $colors.text,
          surface: $colors.surface,
          onSurface: $colors.text,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Colors.transparent,
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        // primarySwatch: Colors.deepPurple,
        brightness: Brightness.dark,
        useMaterial3: true,
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: $colors.dprimary,
          onPrimary: $colors.dtext,
          secondary: $colors.dsecondary,
          onSecondary: $colors.dtext,
          error: $colors.derror,
          onError: $colors.dtext,
          background: $colors.dbackground,
          onBackground: $colors.dtext,
          surface: $colors.dsurface,
          onSurface: $colors.dtext,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Colors.transparent,
        ),
      );
}
