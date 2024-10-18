import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/Core/Routes_Manager.dart';
import 'package:quran_app/Core/assets_Manager.dart';
import 'package:quran_app/Providers/ThemeProvider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    Future.delayed(
      Duration(seconds: 2),
      () {
        if (context.mounted) {
          Navigator.pushReplacementNamed(context, RoutesManager.homeRoute);
        }
      },
    );
    return Container(
      child: Image.asset(
        width: double.infinity,
        height: double.infinity,
        themeProvider.isLightTheme()
            ? AssetsManager.lightSplash
            : AssetsManager.darkSplash,
        fit: BoxFit.fill,
      ),
    );
  }
}
