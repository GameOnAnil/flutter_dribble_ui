import 'dart:ui';

import 'package:dribble_ui_practice/design_three/widgets/sports_button_with_icon.dart';
import 'package:dribble_ui_practice/utils/colors.dart';
import 'package:flutter/material.dart';

class SportsThirdPage extends StatelessWidget {
  const SportsThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/running.jpg"),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildHeader(context),
                  bloodPressureTile(),
                  const SizedBox(
                    height: 10,
                  ),
                  statsPart(),
                  const SizedBox(
                    height: 10,
                  ),
                  runningDistance(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget runningDistance() {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: Container(
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.4),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "3.24",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 40,
                                ),
                              ),
                              Text(
                                "km",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Running",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "Distance",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: SizedBox(
              width: 250,
              height: 200,
              child: CustomPaint(
                foregroundPainter: MyCustomPaint(),
              ),
            ),
          ),
          const Positioned(
            right: 110,
            bottom: 10,
            child: DotSportsContainer(),
          ),
          const Positioned(
            right: 90,
            bottom: 105,
            child: DotSportsContainer(),
          ),
        ],
      ),
    );
  }

  SizedBox statsPart() {
    return SizedBox(
      height: 220,
      width: double.infinity,
      child: Row(
        children: [
          statsContainer(
              color: MyColors.sportsNeonBright,
              t1: "58",
              t2: "minutes",
              t3: "Active",
              t4: "running time",
              textColor: Colors.black),
          const SizedBox(
            width: 10,
          ),
          statsContainer(
              color: Colors.black.withOpacity(.5),
              t1: "176",
              t2: "bests/min",
              t3: "Heartbeat",
              t4: "rate",
              textColor: Colors.white),
        ],
      ),
    );
  }

  Flexible statsContainer({
    required Color color,
    required String t1,
    required String t2,
    required String t3,
    required String t4,
    required Color textColor,
  }) {
    return Flexible(
      flex: 1,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    t1,
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 35,
                    ),
                  ),
                  Text(
                    t2,
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    t3,
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    t4,
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  ClipRRect bloodPressureTile() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          width: double.infinity,
          height: 110,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.45),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            "105",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "mg/dl",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 10),
                          Text(
                            "Avg Blood",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            "Pressure",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.5),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Icon(
                      Icons.bookmark,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: (() => Navigator.pop(context)),
            child: SportsButtonWithIcon(
              color: MyColors.sportsButtonColorLight.withOpacity(.6),
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: MyColors.sportsNeonBright),
                child: Center(
                  child: Image.asset(
                    "assets/images/sneakers.png",
                    width: 35,
                    height: 35,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Running",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "05:30 PM - 06:38 PM",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 12),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class DotSportsContainer extends StatelessWidget {
  const DotSportsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 176, 173, 173)),
      child: Center(
        child: Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2), color: Colors.white),
        ),
      ),
    );
  }
}

class MyCustomPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.5;

    Path path0 = Path();
    path0.moveTo(size.width * 0.0396000, size.height * 0.9933333);
    path0.quadraticBezierTo(size.width * 0.8957000, size.height * 0.7499333,
        size.width * 0.6002667, size.height * 0.4988000);
    path0.quadraticBezierTo(size.width * 0.2119000, size.height * 0.2521000,
        size.width * 0.9452000, size.height * 0.0152000);

    Paint paint1 = Paint()
      ..color = Colors.white.withOpacity(.5)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.5;

    Path path1 = Path();
    path1.moveTo(size.width * 0.3368800, size.height);
    path1.quadraticBezierTo(size.width * 0.5649200, size.height * 0.7189565,
        size.width * 0.5409600, size.height * 0.5719565);
    path1.cubicTo(
        size.width * 0.5060800,
        size.height * 0.4418261,
        size.width * 0.2391600,
        size.height * 0.7016522,
        size.width * 0.1426400,
        size.height * 0.6067391);
    path1.quadraticBezierTo(size.width * 0.0434000, size.height * 0.3564783,
        size.width * 0.6269600, 0);
    canvas.drawPath(path0, paint0);
    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
