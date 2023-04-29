import 'package:flutter/material.dart';

/// # COLORS *
const Color ColorPrimary = Color.fromARGB(255, 54, 117, 240);
const Color ColorOnPrimary = Color.fromARGB(255, 234, 234, 234);
const Color ColorSecondary = Color.fromARGB(255, 87, 150, 92);
const Color ColorOnSecondary = Color.fromARGB(255, 234, 234, 234);
const Color ColorError = Color.fromARGB(255, 201, 79, 79);
const Color ColorOnError = Color.fromARGB(255, 234, 234, 234);
const Color ColorBackground = Color.fromARGB(255, 30, 31, 34);
const Color ColorOnBackground = Color.fromARGB(255, 178, 180, 185);
const Color ColorSurface = Color.fromARGB(255, 43, 45, 48);
const Color ColorOnSurface = Color.fromARGB(255, 234, 234, 234);
const Color ColorEditorSurface = Color.fromARGB(255, 30, 31, 34);
const Color ColorOnEditorSurface = Color.fromARGB(255, 178, 180, 185);

/// # THEMES *
class CustomColorScheme extends ColorScheme {
  final Color editorSurface;
  final Color onEditorSurface;

  const CustomColorScheme({
    required super.brightness,
    super.primary = ColorPrimary,
    super.onPrimary = ColorOnPrimary,
    super.secondary = ColorSecondary,
    super.onSecondary = ColorOnSecondary,
    super.error = ColorError,
    super.onError = ColorOnError,
    super.background = ColorBackground,
    super.onBackground = ColorOnSecondary,
    super.surface = ColorSurface,
    super.onSurface = ColorOnSurface,
    this.editorSurface = ColorEditorSurface,
    this.onEditorSurface = ColorOnEditorSurface,
  });
}

const CustomColorScheme LightColorScheme =
    CustomColorScheme(brightness: Brightness.light);

const CustomColorScheme DarkColorScheme =
    CustomColorScheme(brightness: Brightness.dark);

ThemeData LightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: LightColorScheme,
);

ThemeData DarkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: DarkColorScheme,
);
