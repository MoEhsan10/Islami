import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  String currenLanguage = 'en';

  void changeAppLanguage(String newLanguage) {
    if (currenLanguage == newLanguage) return;
    currenLanguage = newLanguage;
    notifyListeners();
  }
}
