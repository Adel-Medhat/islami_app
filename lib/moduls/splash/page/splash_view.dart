import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami/config/settings_provider.dart';
import 'package:islami/layout/layout_view.dart';
import 'package:provider/provider.dart';

class SplashView extends StatefulWidget {
  static const String routeName = "/";

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(
      const Duration(
        seconds: 2,
      ),
      () {
        Navigator.pushReplacementNamed(
          context,
          LayoutView.routeName,
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    var vm = Provider.of<SettingsProvider>(context);
    return Scaffold(
      body: Image.asset(
        vm.currentThemeMode == ThemeMode.light
            ? "assets/images/splash_background.png"
            : "assets/images/splash_dark_background.png",
        height: mediaQuery.height,
        width: mediaQuery.width,
        fit: BoxFit.cover,
      ),
    );
  }
}
