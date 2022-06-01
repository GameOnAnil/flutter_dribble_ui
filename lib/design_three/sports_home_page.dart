import 'package:dribble_ui_practice/design_three/sports_second.dart';
import 'package:dribble_ui_practice/design_three/widgets/animated_button.dart';
import 'package:dribble_ui_practice/design_three/widgets/finger_print_btn.dart';
import 'package:dribble_ui_practice/design_three/widgets/sports_arrow_button.dart';
import 'package:dribble_ui_practice/design_three/widgets/sports_dot_button.dart';
import 'package:dribble_ui_practice/utils/colors.dart';
import 'package:flutter/material.dart';

class SportHomePage extends StatelessWidget {
  const SportHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomPaint(
        painter: BackgroundPainter(),
        child: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
                colors: [
                  MyColors.sportsNeonButton,
                  Colors.black,
                ],
                focal: const Alignment(-1.4, .2),
                radius: 2,
                stops: const [0.05, 0.4]),
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                appBar(),
                const SizedBox(
                  height: 20,
                ),
                textHeader(),
                // roundButtonPart(context),
                AnimatedRoundButton(
                  parentContext: context,
                ),
                buttomTextColumn(),
                const SizedBox(
                  height: 10,
                ),
                const FingerPrintButton(),
                const SizedBox(
                  height: 65,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget roundButtonPart(BuildContext context) {
    return Expanded(
      child: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            border: Border.all(color: MyColors.sportsNeonButton, width: 2),
            borderRadius: BorderRadius.circular(250),
            color: Colors.white.withOpacity(0.2),
          ),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const SportsSecond())));
                  },
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            color: Colors.black.withOpacity(.4),
                            offset: const Offset(0, 5)),
                        BoxShadow(
                            blurRadius: 5,
                            color: Colors.black.withOpacity(.4),
                            offset: const Offset(5, -2)),
                      ],
                    ),
                    child: const Center(
                        child: Icon(
                      Icons.settings,
                      color: Colors.black,
                    )),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox buttomTextColumn() {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "98",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: " mg/dl",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Text(
              "Last scanned at 10:35 am",
              style:
                  TextStyle(fontSize: 15, color: Colors.white.withOpacity(0.6)),
            )
          ],
        ),
      ),
    );
  }

  Padding textHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Scan your",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            "blood sugar",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Padding appBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SportsArrowButton(
            onTap: () {},
          ),
          SportsDotButton(
            onTap: () {},
          )
        ],
      ),
    );
  }
}

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();
    Path mainBackground = Path();

    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = Colors.black;
    canvas.drawPath(mainBackground, paint);

    Path ovelPath = Path();
    ovelPath.moveTo(0, height * 0.2);
    ovelPath.quadraticBezierTo(
        width * .45, height * .25, width * .51, height * .5);

    ovelPath.quadraticBezierTo(width * .55, height * .8, width * .1, height);

    ovelPath.lineTo(0, height);

    ovelPath.close();

    // paint.color = MyColors.sportsNeonButton;
    final newPaint = Paint()
      ..shader = LinearGradient(
              colors: [MyColors.sportsNeonButton, Colors.black],
              stops: const [0.7, 1])
          .createShader(Rect.fromCenter(
              center: const Offset(0, 0), width: width, height: height));
    // ..blendMode = BlendMode.softLight;

    canvas.drawPath(ovelPath, newPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
