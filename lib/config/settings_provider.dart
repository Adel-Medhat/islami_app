import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String currentLanguage = "ar";
  ThemeMode currentThemeMode = ThemeMode.light;

  changeLanguage(String newLanguage) {
    if (newLanguage == currentLanguage) return;
    currentLanguage = newLanguage;
    notifyListeners();
  }

  changeTheme(ThemeMode newTheme) {
    if (newTheme == currentThemeMode) return;
    currentThemeMode = newTheme;
    notifyListeners();
  }

  String getBackground() {
    return currentThemeMode == ThemeMode.dark
        ? "assets/images/main_dark_background.png"
        : "assets/images/main_background.png";
  }

  bool isDark() {
    return currentThemeMode == ThemeMode.dark;
  }
}
