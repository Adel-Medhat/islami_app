import 'package:flutter/material.dart';
import 'package:islami/config/application_theme_maneger.dart';

class RadioView extends StatelessWidget {
  static const String routeName = "RadioView";

  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;

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
              icon: const Icon(
                Icons.skip_previous,
                color: ApplicationThemeManeger.primaryColor,
                size: 40,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.play_arrow_rounded,
                color: ApplicationThemeManeger.primaryColor,
                size: 60,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.skip_next,
                color: ApplicationThemeManeger.primaryColor,
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
