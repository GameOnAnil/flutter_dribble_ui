import 'package:dribble_ui_practice/design_four/widgets/double_text_column.dart';
import 'package:dribble_ui_practice/utils/colors.dart';
import 'package:flutter/material.dart';

class AnimatedBottomHeader extends StatefulWidget {
  const AnimatedBottomHeader({Key? key}) : super(key: key);

  @override
  State<AnimatedBottomHeader> createState() => _AnimatedBottomHeaderState();
}

class _AnimatedBottomHeaderState extends State<AnimatedBottomHeader> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TweenAnimationBuilder(
            curve: Curves.easeOut,
            duration: const Duration(milliseconds: 300),
            tween: Tween<double>(begin: -600, end: 10),
            builder: (context, double tween, child) {
              return AnimatedPositioned(
                curve: Curves.decelerate,
                left: 0,
                right: 0,
                bottom: tween,
                duration: const Duration(milliseconds: 200),
                child: _bottomPartContent(),
              );
            }),
      ],
    );
  }

  Widget _bottomPartContent() {
    return Container(
      width: double.infinity,
      color: Colors.white.withOpacity(.1),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                DoubleTextColumn(text1: "Concert From", text2: "\$7000/ hour")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width * .55,
              decoration: BoxDecoration(
                  color: MyColors.backgroundColor1,
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Order a concert",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
