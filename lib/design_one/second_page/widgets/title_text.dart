import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String text;
  final double textSize;
  const TitleText({
    Key? key,
    required this.text,
    required this.textSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black.withOpacity(0.65),
        fontWeight: FontWeight.w700,
        fontSize: textSize,
      ),
    );
  }
}
