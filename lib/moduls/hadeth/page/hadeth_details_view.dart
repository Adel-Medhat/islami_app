import 'package:flutter/material.dart';
import 'package:islami/moduls/hadeth/page/hadeth_view.dart';

class HadethDetailsView extends StatelessWidget {
  static const routeName = "hadethDetails";

  const HadethDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethData;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/main_background.png",
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
            color: const Color(0xFFF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Text(
                args.title,
                style: const TextStyle(
                  fontFamily: "El Messiri",
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
              ),
              Divider(
                color: theme.primaryColor,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    args.content,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: "El Messiri",
                      fontWeight: FontWeight.w500,
                      fontSize: 23,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
