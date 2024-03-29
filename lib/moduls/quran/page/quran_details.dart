import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/config/application_theme_maneger.dart';
import 'package:islami/config/settings_provider.dart';
import 'package:islami/moduls/quran/page/quran_view.dart';
import 'package:provider/provider.dart';

class QuranDetails extends StatefulWidget {
  static const String routeName = "quran_details";

  const QuranDetails({super.key});

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  List<String> versesList = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetail;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var vm = Provider.of<SettingsProvider>(context);

    if (versesList.isEmpty) loadData(args.suraNumber);
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
          title: const Text(
            "إسلامي",
          ),
        ),
        body: Container(
          width: mediaQuery.width,
          height: mediaQuery.height,
          margin: const EdgeInsets.only(
            right: 20,
            left: 20,
            top: 15,
            bottom: 80,
          ),
          padding: const EdgeInsets.only(
            right: 20,
            left: 20,
            top: 15,
            bottom: 15,
          ),
          decoration: BoxDecoration(
            color: vm.isDark()
                ? ApplicationThemeManeger.primaryDarkColor.withOpacity(0.8)
                : Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "سورة ${args.suraName}",
                    style: const TextStyle(
                      fontFamily: "El Messiri",
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.play_circle_fill_rounded,
                    color: vm.isDark()
                        ? ApplicationThemeManeger.onPrimaryDarkColor
                        : Colors.black,
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: vm.isDark()
                    ? ApplicationThemeManeger.onPrimaryDarkColor
                    : ApplicationThemeManeger.primaryColor,
              ),
              if (versesList.isEmpty)
                Center(
                  child: CircularProgressIndicator(
                    color: theme.primaryColor,
                  ),
                ),
              if (versesList.isNotEmpty)
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => Text(
                      "${versesList[index]} {${index + 1}}",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: "El Messiri",
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    itemCount: versesList.length,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> loadData(String suraNumber) async {
    String suraContent =
        await rootBundle.loadString("assets/files/$suraNumber.txt");
    versesList = suraContent.split("\n");
    setState(() {});
  }
}
