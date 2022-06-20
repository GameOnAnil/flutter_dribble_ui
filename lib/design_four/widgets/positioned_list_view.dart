import 'package:dribble_ui_practice/design_four/widgets/band_small_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PositionedListView extends StatefulWidget {
  const PositionedListView({Key? key}) : super(key: key);

  @override
  State<PositionedListView> createState() => _PositionedListViewState();
}

class _PositionedListViewState extends State<PositionedListView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TweenAnimationBuilder(
            duration: const Duration(milliseconds: 200),
            tween: Tween<double>(begin: -70.h, end: 0),
            builder: (context, double value, child) {
              return AnimatedPositioned(
                curve: Curves.decelerate,
                duration: const Duration(milliseconds: 200),
                right: 0,
                left: 0,
                bottom: value,
                child: _listViewPart(),
              );
            }),
      ],
    );
  }
}

SizedBox _listViewPart() {
  return SizedBox(
    height: 250.h,
    width: double.infinity,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        BandSmallCard(
          image: "assets/images/bts5.jpeg",
        ),
        BandSmallCard(
          image: "assets/images/bts4.jpeg",
        ),
        BandSmallCard(
          image: "assets/images/bts.jpg",
        )
      ],
    ),
  );
}
