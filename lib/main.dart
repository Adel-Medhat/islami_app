import 'package:flutter/material.dart';
import 'package:islami/config/application_theme_maneger.dart';
import 'package:islami/layout/layout_view.dart';
import 'package:islami/moduls/radio/page/radio_view.dart';
import 'package:islami/moduls/sebha/page/sebha_view.dart';
import 'package:islami/moduls/splash/page/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islami App',
      theme: ApplicationThemeManeger.lightTheme,
      themeMode: ThemeMode.light,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayoutView.routeName: (context) => const LayoutView(),
        RadioView.routeName: (context) => const RadioView(),
        SebhaView.routeName: (context) => const SebhaView(),
      },
    );
  }
}
