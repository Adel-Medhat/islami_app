import 'package:flutter/material.dart';

class ApplicationThemeManeger {
  static const Color primaryColor = Color(0xffB7935F);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontFamily: "El Messiri",
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xff242424),
      selectedLabelStyle: TextStyle(
        fontFamily: "El Messiri",
        color: Color(0xff242424),
        fontSize: 17,
        fontWeight: FontWeight.w400,
      ),
      selectedIconTheme: IconThemeData(
        color: Color(0xff242424),
      ),
      unselectedItemColor: Colors.white,
      unselectedLabelStyle: TextStyle(
        fontFamily: "El Messiri",
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
  );
}
