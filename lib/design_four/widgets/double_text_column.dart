import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoubleTextColumn extends StatelessWidget {
  final String text1;
  final String text2;
  const DoubleTextColumn({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: TextStyle(
              fontSize: 20.sp,
              color: Colors.white.withOpacity(.9),
              fontWeight: FontWeight.w500),
        ),
        Text(
          text2,
          style: TextStyle(
              fontSize: 22.sp,
              color: Colors.white,
              fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
