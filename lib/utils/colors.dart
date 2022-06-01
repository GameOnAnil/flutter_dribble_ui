import 'package:flutter/material.dart';

class MyColors {
  MyColors();
  static Color mainColor = const Color(0xff6c60e1);
  static Color blueColor = const Color.fromARGB(255, 180, 221, 250);
  static Color yellowColor = const Color.fromARGB(255, 248, 233, 184);
  static Color purpleColor = const Color.fromARGB(255, 214, 203, 253);
  static Color greenColor = const Color.fromARGB(255, 175, 235, 214);
  static Color orangeColor = const Color.fromARGB(255, 247, 206, 181);

  static Color blueColorDark = const Color.fromARGB(255, 45, 150, 225);
  static Color yellowColorDark = const Color.fromARGB(255, 204, 169, 54);
  static Color purpleColorDark = const Color.fromARGB(255, 108, 67, 255);
  static Color greenColorDark = const Color.fromARGB(255, 36, 189, 136);
  static Color orangeColorDark = const Color.fromARGB(255, 232, 155, 107);

  static Color bankPrimary = const Color(0xff0E123E);
  static Color bankSecondary = const Color(0xff290F65);
  static Color bankPink = const Color(0xffFD93D5);

  static List<Color> gradientColor = [
    const Color(0xffFD93D5).withOpacity(0.6),
    const Color.fromARGB(255, 185, 129, 163).withOpacity(0.6),
    const Color(0xff0E123E),
  ];

  static List<Color> gradientSportsColor = [
    const Color.fromARGB(255, 218, 230, 140).withOpacity(.5),
    // const Color.fromARGB(255, 65, 66, 59),
    const Color(0xff0E123E),
  ];

  static Color sportsButtonColor = const Color(0xff282D29);
  static Color sportsButtonColorLight =
      const Color.fromARGB(255, 100, 100, 100);
  static Color sportsNeonButton = const Color.fromARGB(255, 230, 255, 68);
  static Color sportsNeonBright = const Color.fromARGB(255, 231, 255, 78);
  static Color sportsNeonLight = const Color.fromRGBO(244, 255, 173, 1);
}
