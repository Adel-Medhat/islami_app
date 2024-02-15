import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/config/application_theme_maneger.dart';
import 'package:islami/config/settings_provider.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatelessWidget {
  SettingsView({super.key});

  final List<String> themeList = [
    "Dark",
    "Light",
  ];
  final List<String> languageList = [
    "English",
    "عربي",
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var local = AppLocalizations.of(context)!;
    var vm = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            local.language,
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomDropdown<String>(
            decoration: CustomDropdownDecoration(
              closedSuffixIcon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: vm.isDark()
                    ? ApplicationThemeManeger.onPrimaryDarkColor
                    : ApplicationThemeManeger.primaryColor,
              ),
              expandedSuffixIcon: Icon(
                Icons.keyboard_arrow_up_rounded,
                color: vm.isDark()
                    ? ApplicationThemeManeger.onPrimaryDarkColor
                    : ApplicationThemeManeger.primaryColor,
              ),
              expandedFillColor: vm.isDark()
                  ? ApplicationThemeManeger.primaryDarkColor
                  : Colors.white,
              closedFillColor: vm.isDark()
                  ? ApplicationThemeManeger.primaryDarkColor
                  : Colors.white,
            ),
            items: languageList,
            initialItem: vm.currentLanguage == "en" ? "English" : "عربي",
            onChanged: (value) {
              if (value == "English") {
                vm.changeLanguage("en");
              } else if (value == "عربي") {
                vm.changeLanguage("ar");
              }
            },
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            local.theme,
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomDropdown<String>(
            decoration: CustomDropdownDecoration(
              closedSuffixIcon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: vm.isDark()
                    ? ApplicationThemeManeger.onPrimaryDarkColor
                    : ApplicationThemeManeger.primaryColor,
              ),
              expandedSuffixIcon: Icon(
                Icons.keyboard_arrow_up_rounded,
                color: vm.isDark()
                    ? ApplicationThemeManeger.onPrimaryDarkColor
                    : ApplicationThemeManeger.primaryColor,
              ),
              expandedFillColor: vm.isDark()
                  ? ApplicationThemeManeger.primaryDarkColor
                  : Colors.white,
              closedFillColor: vm.isDark()
                  ? ApplicationThemeManeger.primaryDarkColor
                  : Colors.white,
            ),
            items: themeList,
            initialItem: vm.isDark() ? "Dark" : "Light",
            onChanged: (value) {
              if (value == "Dark") {
                vm.changeTheme(ThemeMode.dark);
              } else if (value == "Light") {
                vm.changeTheme(ThemeMode.light);
              }
            },
          ),
        ],
      ),
    );
  }
}
