import 'package:dribble_ui_practice/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final String text;
  final bool isSelected;
  const CustomChip({
    Key? key,
    required this.text,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Center(
        child: Container(
          height: 40,
          decoration: BoxDecoration(
              color: isSelected
                  ? MyColors.mainColor
                  : MyColors.mainColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: FittedBox(
              child: Text(
                text,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
