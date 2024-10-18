import 'package:flutter/material.dart';
import 'package:quran_app/Core/Colors_Manager.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        onPrimaryFixed: ColorsManager.lightPrimary,
        onPrimary: ColorsManager.white,
        seedColor: ColorsManager.lightPrimary,
        primary: ColorsManager.lightPrimary,
        secondary: ColorsManager.blackTextColor,
      ),
      primaryColor: ColorsManager.lightPrimary,
      appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      centerTitle: true,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: ColorsManager.lightPrimary,
          showUnselectedLabels: false,
        elevation: 20,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
          size: 30,
        ),
        unselectedIconTheme: IconThemeData(
          size: 22,
        )),
      dividerColor: ColorsManager.lightPrimary,
      cardTheme: CardTheme(
      color: Colors.white,
      elevation: 14,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
      indicatorColor: ColorsManager.lightPrimary,
      iconTheme: IconThemeData(color: ColorsManager.lightPrimary),
      textTheme: const TextTheme(
        headlineMedium: TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.w600,
        color: ColorsManager.blackTextColor,
      ),
      titleMedium: TextStyle(
        fontSize: 20,
        color: ColorsManager.blackTextColor,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        color: ColorsManager.blackTextColor,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
        labelMedium: TextStyle(
            fontSize: 21,
            color: ColorsManager.blackTextColor,
            fontWeight: FontWeight.w500),
        labelSmall: TextStyle(
            fontSize: 18,
            color: ColorsManager.lightPrimary,
            fontWeight: FontWeight.w500),
        displayMedium: TextStyle(
            fontSize: 23,
            color: ColorsManager.lightPrimary,
            fontWeight: FontWeight.w500),
        displaySmall: TextStyle(
            fontSize: 23,
            color: ColorsManager.blackTextColor,
            fontWeight: FontWeight.w500),
        titleSmall: TextStyle(
            fontSize: 23,
            color: ColorsManager.white,
            fontWeight: FontWeight.bold),
      ),
      bottomSheetTheme: BottomSheetThemeData(
          elevation: 12,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ))));
  static ThemeData darkTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        onPrimaryFixed: ColorsManager.yellow,
        onPrimary: ColorsManager.darkPrimary,
        seedColor: ColorsManager.darkPrimary,
        primary: ColorsManager.darkPrimary,
        secondary: ColorsManager.white,
      ),
      primaryColor: ColorsManager.darkPrimary,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: ColorsManager.white,
        ),
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: ColorsManager.darkPrimary,
          showUnselectedLabels: false,
          elevation: 20,
          selectedItemColor: ColorsManager.yellow,
          unselectedItemColor: ColorsManager.white,
          selectedIconTheme: IconThemeData(
            size: 30,
          ),
          unselectedIconTheme: IconThemeData(
            size: 22,
          )),
      dividerColor: ColorsManager.yellow,
      cardTheme: CardTheme(
        color: ColorsManager.darkPrimary,
        elevation: 14,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      indicatorColor: ColorsManager.yellow,
      iconTheme: IconThemeData(color: ColorsManager.yellow),
      textTheme: TextTheme(
        headlineMedium: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.w600,
          color: ColorsManager.white,
        ),
        titleMedium: TextStyle(
          fontSize: 20,
          color: ColorsManager.white,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: ColorsManager.yellow,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
            fontSize: 21,
            color: ColorsManager.white,
            fontWeight: FontWeight.w500),
        labelSmall: TextStyle(
            fontSize: 18,
            color: ColorsManager.yellow,
            fontWeight: FontWeight.w500),
        displayMedium: TextStyle(
            fontSize: 23,
            color: ColorsManager.yellow,
            fontWeight: FontWeight.w500),
        displaySmall: TextStyle(
            fontSize: 23,
            color: ColorsManager.white,
            fontWeight: FontWeight.w500),
        titleSmall: TextStyle(
            fontSize: 23,
            color: ColorsManager.blackTextColor,
            fontWeight: FontWeight.bold),
      ),
      bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: ColorsManager.darkPrimary,
          elevation: 12,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ))));
}
