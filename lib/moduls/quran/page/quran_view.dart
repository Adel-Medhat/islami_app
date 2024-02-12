import 'package:flutter/material.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Quran View",
        style: TextStyle(
          color: Colors.black,
          fontFamily: "El Messiri",
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
    );
  }
}
