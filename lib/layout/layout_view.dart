import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/config/settings_provider.dart';
import 'package:islami/moduls/hadeth/page/hadeth_view.dart';
import 'package:islami/moduls/quran/page/quran_view.dart';
import 'package:islami/moduls/radio/page/radio_view.dart';
import 'package:islami/moduls/sebha/page/sebha_view.dart';
import 'package:islami/moduls/settings/page/settings_view.dart';
import 'package:provider/provider.dart';

class LayoutView extends StatefulWidget {
  static const String routeName = "layout";

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex = 0;
  List<Widget> screens = [
    QuranView(),
    const HadethView(),
    const SebhaView(),
    const RadioView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    var lang = AppLocalizations.of(context)!;
    var vm = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            vm.getBackground(),
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            lang.islami,
          ),
        ),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage(
                  "assets/images/quran_icn.png",
                ),
              ),
              label: lang.quran,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage(
                  "assets/images/hadeth_icn.png",
                ),
              ),
              label: lang.hadeth,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage(
                  "assets/images/sebha_icn.png",
                ),
              ),
              label: lang.tasbeh,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage(
                  "assets/images/radio_icn.png",
                ),
              ),
              label: lang.radio,
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.settings,
              ),
              label: lang.settings,
            ),
          ],
        ),
      ),
    );
  }
}
