import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/config/application_theme_maneger.dart';
import 'package:islami/config/settings_provider.dart';
import 'package:islami/layout/layout_view.dart';
import 'package:islami/moduls/hadeth/page/hadeth_details_view.dart';
import 'package:islami/moduls/quran/page/quran_details.dart';
import 'package:islami/moduls/radio/page/radio_view.dart';
import 'package:islami/moduls/sebha/page/sebha_view.dart';
import 'package:islami/moduls/splash/page/splash_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SettingsProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islami App',
      theme: ApplicationThemeManeger.lightTheme,
      darkTheme: ApplicationThemeManeger.darkTheme,
      themeMode: vm.currentThemeMode,
      locale: Locale(vm.currentLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayoutView.routeName: (context) => const LayoutView(),
        RadioView.routeName: (context) => const RadioView(),
        SebhaView.routeName: (context) => const SebhaView(),
        QuranDetails.routeName: (context) => const QuranDetails(),
        HadethDetailsView.routeName: (context) => const HadethDetailsView(),
      },
    );
  }
}
