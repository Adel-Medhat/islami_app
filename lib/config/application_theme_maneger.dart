import 'package:flutter/material.dart';

class ApplicationThemeManeger {
  static const Color primaryColor = Color(0xffB7935F);
  static const Color primaryDarkColor = Color(0xff141A2E);
  static const Color onPrimaryDarkColor = Color(0xffFACC1D);

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
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 30,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 25,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 20,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: primaryColor,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: primaryDarkColor,
    scaffoldBackgroundColor: Colors.transparent,
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: onPrimaryDarkColor,
      ),
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontFamily: "El Messiri",
        color: onPrimaryDarkColor,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: primaryDarkColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: onPrimaryDarkColor,
      selectedLabelStyle: TextStyle(
        fontFamily: "El Messiri",
        color: onPrimaryDarkColor,
        fontSize: 17,
        fontWeight: FontWeight.w400,
      ),
      selectedIconTheme: IconThemeData(
        color: onPrimaryDarkColor,
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
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 30,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 25,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 20,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: onPrimaryDarkColor,
    ),
  );
}
