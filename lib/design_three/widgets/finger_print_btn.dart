import 'package:dribble_ui_practice/utils/colors.dart';
import 'package:flutter/material.dart';

class FingerPrintButton extends StatelessWidget {
  const FingerPrintButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 100,
        width: 80,
        decoration: BoxDecoration(
          border: Border.all(color: MyColors.sportsNeonButton, width: 2),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: MyColors.sportsButtonColorLight),
            child: const Icon(
              Icons.fingerprint,
              size: 40,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
