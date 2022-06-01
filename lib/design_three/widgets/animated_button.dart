import 'package:dribble_ui_practice/design_three/sports_second.dart';
import 'package:dribble_ui_practice/utils/colors.dart';
import 'package:dribble_ui_practice/utils/custom_painter.dart';
import 'package:flutter/material.dart';

class AnimatedRoundButton extends StatefulWidget {
  final BuildContext parentContext;
  const AnimatedRoundButton({
    Key? key,
    required this.parentContext,
  }) : super(key: key);

  @override
  State<AnimatedRoundButton> createState() => _AnimatedRoundButtonState();
}

class _AnimatedRoundButtonState extends State<AnimatedRoundButton>
    with SingleTickerProviderStateMixin {
  late Animation<double> progressValue;
  late AnimationController controller;
  late CurvedAnimation curvedAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    curvedAnimation =
        CurvedAnimation(parent: controller, curve: Curves.decelerate)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return const SportsSecond();
              })));
              controller.reset();
            }
          });

    progressValue = Tween<double>(begin: 0, end: 360).animate(curvedAnimation);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return Stack(
            children: [
              Center(
                child: SizedBox(
                  width: 360,
                  height: 360,
                  child: CustomPaint(
                    painter:
                        CustomCirclePainter(progressValue: progressValue.value),
                    child: Center(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Colors.grey,
                              spreadRadius: 1.5,
                            )
                          ],
                        ),
                        child: GestureDetector(
                          onTap: () {
                            controller.forward();
                          },
                          child: const CircleAvatar(
                            radius: 88,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.settings,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              containerOnRoundButton()
            ],
          );
        });
  }

  Positioned containerOnRoundButton() {
    return Positioned(
      bottom: 50,
      left: 20,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: MyColors.sportsNeonBright,
        ),
        width: 75,
        height: 75,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              "105",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              "mg/dl",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
