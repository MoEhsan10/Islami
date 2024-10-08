import 'package:flutter/material.dart';
import 'package:quran_app/Core/Routes_Manager.dart';
import 'package:quran_app/Core/assets_Manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        AssetsManager.lightSplash,
        fit: BoxFit.fill,
      ),
    );
  }
}
