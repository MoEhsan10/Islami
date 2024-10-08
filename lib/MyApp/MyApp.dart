import 'package:flutter/material.dart';
import 'package:quran_app/Config/Theme/My_Theme.dart';
import 'package:quran_app/Core/Routes_Manager.dart';
import 'package:quran_app/Presentation/Modules/Home_Module/Screens/Home_Screen.dart';
import 'package:quran_app/Presentation/Modules/Home_Module/Screens/Quran_Details_Screen/Quran_Details_Screen.dart';
import 'package:quran_app/Presentation/Modules/Splash_Module/SplashScreen/Splash.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      routes: {
        RoutesManager.homeRoute: (_) => HomeScreen(),
        RoutesManager.splashRoute: (_) => SplashScreen(),
        RoutesManager.quranDetailsRoute: (_) => QuranDetailsScreen(),
      },
      initialRoute: RoutesManager.splashRoute,
    );
  }
}
//0xffB7935F
