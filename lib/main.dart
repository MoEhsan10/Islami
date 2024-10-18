import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/MyApp/MyApp.dart';
import 'package:quran_app/Providers/LanguageProvider.dart';
import 'package:quran_app/Providers/ThemeProvider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => LanguageProvider(),
    )
  ], child: MyApp()));
}
