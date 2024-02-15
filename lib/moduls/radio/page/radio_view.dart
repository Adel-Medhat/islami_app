import 'package:flutter/material.dart';
import 'package:islami/config/application_theme_maneger.dart';
import 'package:islami/config/settings_provider.dart';
import 'package:provider/provider.dart';

class RadioView extends StatelessWidget {
  static const String routeName = "RadioView";

  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    var vm = Provider.of<SettingsProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        Image.asset(
          "assets/images/radio_header.png",
          height: mediaQuery.height * 0.3,
        ),
        const Spacer(),
        const Text(
          "إذاعة القرآن الكريم",
          style: TextStyle(
            fontFamily: "El Messiri",
            fontWeight: FontWeight.w600,
            fontSize: 25,
          ),
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.skip_previous,
                color: vm.isDark()
                    ? ApplicationThemeManeger.onPrimaryDarkColor
                    : ApplicationThemeManeger.primaryColor,
                size: 40,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.play_arrow_rounded,
                color: vm.isDark()
                    ? ApplicationThemeManeger.onPrimaryDarkColor
                    : ApplicationThemeManeger.primaryColor,
                size: 60,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.skip_next,
                color: vm.isDark()
                    ? ApplicationThemeManeger.onPrimaryDarkColor
                    : ApplicationThemeManeger.primaryColor,
                size: 40,
              ),
            ),
          ],
        ),
        const Spacer(),
      ],
    );
  }
}
