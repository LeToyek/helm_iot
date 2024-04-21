import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helm_iot/ui/theme/color_scheme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme.g.dart';

final lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme,
    fontFamily: GoogleFonts.nunito().fontFamily);

final darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: darkColorScheme,
  fontFamily: GoogleFonts.nunito().fontFamily,
);

@riverpod
class ThemeNotifier extends _$ThemeNotifier {
  @override
  ThemeMode build() => ThemeMode.system;

  void toggleTheme() {
    if (state == ThemeMode.system) {
      state = ThemeMode.light;
    } else if (state == ThemeMode.light) {
      state = ThemeMode.dark;
    } else {
      state = ThemeMode.system;
    }
  }
}
