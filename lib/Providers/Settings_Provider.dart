import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  // data or state
  ThemeMode currentTheme = ThemeMode.light;
  String currentLanguage = 'en';

  SettingsProvider() {
    getThemeMode();
    getLanguage();
  }

  void changeAppLanguage(String newLanguage) {
    if (currentLanguage == newLanguage) return;
    currentLanguage = newLanguage;
    saveLanguage(currentLanguage);
    notifyListeners();
  }

  void changeAppTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    saveThemMode(currentTheme);
    notifyListeners();
  }

  bool isLightTheme() {
    return currentTheme == ThemeMode.light;
  }

  void saveThemMode(ThemeMode theme) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (theme == ThemeMode.light) {
      prefs.setString('theme', 'light');
    } else {
      prefs.setString('theme', 'dark');
    }
  }

  void getThemeMode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String cachedTheme = prefs.getString('theme') ?? 'light';
    if (cachedTheme == 'light') {
      currentTheme = ThemeMode.light;
    } else {
      currentTheme = ThemeMode.dark;
    }
    notifyListeners();
  }

  void saveLanguage(String lang) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (lang == 'ar') {
      prefs.setString('language', 'ar');
    } else {
      prefs.setString('language', 'en');
    }
  }

  void getLanguage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String cachedLang = prefs.getString('language') ?? 'en';
    if (cachedLang == 'ar') {
      currentLanguage = 'ar';
    } else {
      currentLanguage = 'en';
    }
    notifyListeners();
  }
}
