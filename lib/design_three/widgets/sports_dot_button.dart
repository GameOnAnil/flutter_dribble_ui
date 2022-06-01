import 'package:dribble_ui_practice/utils/colors.dart';
import 'package:flutter/material.dart';

class SportsDotButton extends StatelessWidget {
  final Function onTap;
  const SportsDotButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: MyColors.sportsButtonColor,
        ),
        child: IconButton(
          onPressed: () {
            onTap();
          },
          icon: const Icon(Icons.donut_small),
          color: Colors.white,
        ),
      ),
    );
  }
}
