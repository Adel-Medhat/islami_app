import 'package:flutter/material.dart';
import 'package:islami/config/application_theme_maneger.dart';

class SebhaView extends StatefulWidget {
  static const String routeName = "SebhaView";

  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  List<Widget> doaa = [
    const Text(
      "سبحان الله",
      style: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 25,
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
    ),
    const Text(
      "الحمد لله",
      style: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 25,
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
    ),
    const Text(
      "الله أكبر",
      style: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 25,
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
    ),
  ];
  int doaaCounter = 0;
  int tasbehCounter = 0;
  double angleCounter = 0.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    // display sebha with counter
                    if (tasbehCounter < 5) {
                      tasbehCounter++;
                      angleCounter += 0.1;
                      return;
                    }

                    // change Doaa
                    if (tasbehCounter == 5) {
                      tasbehCounter = 0;
                      doaaCounter++;
                      angleCounter += 0.1;
                    }

                    // check if doaa counter reach to doaa list
                    if (doaaCounter == doaa.length) {
                      doaaCounter = 0;
                      return;
                    }
                    // tasbehCounter = sebhaCounter(tasbehCounter);
                    //
                    //  angleCounter = resetRotate(angleCounter);
                    //
                    //
                    //  doaaCounter = resetDoaaCounter(doaaCounter);
                  });
                },
                child: Transform.rotate(
                  angle: angleCounter,
                  child: Image.asset(
                    "assets/images/body of seb7a.png",
                  ),
                ),
              ),
              Positioned(
                top: -78,
                right: 60,
                child: Image.asset(
                  "assets/images/head of seb7a.png",
                ),
              ),
            ],
          ),
          Spacer(),
          const Text(
            "عدد التسبيحات",
            style: TextStyle(
              fontFamily: "El Messiri",
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            backgroundColor: ApplicationThemeManeger.primaryColor,
            child: Text(
              "${tasbehCounter}",
              style: const TextStyle(
                fontFamily: "El Messiri",
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            onPressed: () {},
          ),
          Container(
            alignment: Alignment.center,
            width: 200,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(50),
                right: Radius.circular(50),
              ),
              color: ApplicationThemeManeger.primaryColor,
            ),
            child: doaa[doaaCounter],
          ),
          Spacer(),
        ],
      ),
    );
  }

  int sebhaCounter(int tasbehCounter) {
    //int sebhaCounter = tasbehCounter;

    if (tasbehCounter < 33) {
      return ++tasbehCounter;
    } else {
      return tasbehCounter = 0;
    }
  }

  int resetDoaaCounter(int doaaCounter) {
    //int resetDoaaCounter = doaaCounter;
    if (sebhaCounter(tasbehCounter) == 0 && doaaCounter < 3) {
      return ++doaaCounter;
    } else {
      return doaaCounter = 0;
    }
  }

  double resetRotate(double angleCounter) {
    //double resetRotate = angleCounter;

    if (angleCounter == 3.14 * 2) {
      return angleCounter = 0.0;
    } else {
      return angleCounter += 0.1;
    }
  }
}
