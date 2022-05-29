import 'package:flutter/material.dart';

class SportsButtonWithIcon extends StatelessWidget {
  final Color color;
  final Icon icon;

  const SportsButtonWithIcon({
    Key? key,
    required this.color,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), color: color),
      child: icon,
    );
  }
}
