import 'package:dribble_ui_practice/utils/custom_painter.dart';
import 'package:flutter/material.dart';

class CircleAnimationPage extends StatefulWidget {
  const CircleAnimationPage({Key? key}) : super(key: key);

  @override
  State<CircleAnimationPage> createState() => _CircleAnimationPageState();
}

class _CircleAnimationPageState extends State<CircleAnimationPage> {
  late double progressValue;

  @override
  void initState() {
    progressValue = 100;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (() {
              setState(() {
                progressValue -= 50.0;
              });
            }),
            icon: const Icon(Icons.remove),
          ),
          IconButton(
            onPressed: (() {
              setState(() {
                progressValue += 50.0;
              });
            }),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.black,
          child: CustomPaint(
            painter: CustomCirclePainter(progressValue: progressValue),
          ),
        ),
      ),
    );
  }
}
