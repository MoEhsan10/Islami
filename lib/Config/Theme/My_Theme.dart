import 'package:flutter/material.dart';
import 'package:quran_app/Core/Colors_Manager.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: ColorsManager.goldColor,
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
        backgroundColor: ColorsManager.goldColor,
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
    dividerColor: ColorsManager.goldColor,
    cardTheme: CardTheme(
      color: Colors.white,
      elevation: 14,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    textTheme: TextTheme(
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
            color: ColorsManager.goldColor,
            fontWeight: FontWeight.w500),
        displayMedium: TextStyle(
            fontSize: 23,
            color: ColorsManager.goldColor,
            fontWeight: FontWeight.w500),
      ),
      bottomSheetTheme: BottomSheetThemeData(
          elevation: 12,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ))));
}
