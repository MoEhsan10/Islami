import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  // data or state
  ThemeMode currentTheme = ThemeMode.light;
  String currenLanguage = 'en';

  void changeAppLanguage(String newLanguage) {
    if (currenLanguage == newLanguage) return;
    currenLanguage = newLanguage;
    notifyListeners();
  }

  void changeAppTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  bool isLightTheme() {
    return currentTheme == ThemeMode.light;
  }
}
