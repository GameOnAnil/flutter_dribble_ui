import 'package:dribble_ui_practice/utils/colors.dart';
import 'package:vector_math/vector_math.dart' as maths;
import 'package:flutter/material.dart';

class CustomCirclePainter extends CustomPainter {
  final double progressValue;

  CustomCirclePainter({required this.progressValue});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white.withOpacity(.3)
      ..strokeWidth = 55
      ..strokeCap = StrokeCap.butt
      ..style = PaintingStyle.stroke;
    Offset center = Offset(size.width / 2, size.height / 2);

    Paint innerPaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 55
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    Paint paintOutlineGray = Paint()
      ..color = Colors.white.withOpacity(.6)
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.butt
      ..style = PaintingStyle.stroke;

    Paint paintOutlineNeon = Paint()
      ..color = MyColors.sportsNeonBright
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.butt
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, size.height * .43, paintOutlineGray);
    canvas.drawCircle(center, size.height * .28, innerPaint);
    canvas.drawArc(Rect.fromCircle(center: center, radius: size.width * .35),
        maths.radians(-90), maths.radians(progressValue), false, paint);

    canvas.drawArc(
        Rect.fromCircle(center: center, radius: size.width * .43),
        maths.radians(-90),
        maths.radians(progressValue),
        false,
        paintOutlineNeon);
    // canvas.drawCircle(center, size.height * .35, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
