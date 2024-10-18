import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; // <-- Import this
import 'package:provider/provider.dart';
import 'package:quran_app/Config/Theme/My_Theme.dart';
import 'package:quran_app/Core/Routes_Manager.dart';
import 'package:quran_app/Presentation/Modules/Home_Module/Screens/Hadith_Details_Screen/Hadith_Details_Screen.dart';
import 'package:quran_app/Presentation/Modules/Home_Module/Screens/Home_Screen.dart';
import 'package:quran_app/Presentation/Modules/Home_Module/Screens/Quran_Details_Screen/Quran_Details_Screen.dart';
import 'package:quran_app/Presentation/Modules/Splash_Module/SplashScreen/Splash.dart';
import 'package:quran_app/Providers/LanguageProvider.dart';
import 'package:quran_app/Providers/ThemeProvider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    var languageProvider = Provider.of<LanguageProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: themeProvider.currentTheme,
      routes: {
        RoutesManager.homeRoute: (_) => HomeScreen(),
        RoutesManager.splashRoute: (_) => SplashScreen(),
        RoutesManager.quranDetailsRoute: (_) => QuranDetailsScreen(),
        RoutesManager.hadithDetailsRoute: (_) => HadithDetailsScreen(),
      },
      initialRoute: RoutesManager.splashRoute,
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale('ar'), Locale('en')],
      locale: Locale(languageProvider.currenLanguage),
    );
  }
}
