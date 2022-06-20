import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:dribble_ui_practice/design_four/widgets/animated_bottom_header.dart';
import 'package:dribble_ui_practice/design_four/widgets/double_text_column.dart';
import 'package:dribble_ui_practice/design_four/widgets/positioned_list_view.dart';
import 'package:dribble_ui_practice/utils/colors.dart';
import 'package:flutter/material.dart';

class D4DetailsPage extends StatefulWidget {
  final String headerImage;
  const D4DetailsPage({Key? key, required this.headerImage}) : super(key: key);

  @override
  State<D4DetailsPage> createState() => _D4DetailsPageState();
}

class _D4DetailsPageState extends State<D4DetailsPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<double> myTween;
  late Animation<double> radiusTween;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );

    final curvedAnimatino =
        CurvedAnimation(parent: _controller, curve: Curves.bounceOut);

    myTween = Tween<double>(begin: 0, end: 400).animate(_controller);
    radiusTween = Tween<double>(begin: 500, end: 0).animate(_controller);
    animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: MyColors.backgroundColor2,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _headerWidget2(widget.headerImage),
            _titleText("BTS"),
            _trackBoxPart(),
            const Expanded(
              child: PositionedListView(),
            ),
            _titleText("BTS"),
            const SizedBox(
              height: 130,
              child: AnimatedBottomHeader(),
            ),
          ],
        ),
      ),
    );
  }

  Padding _trackBoxPart() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: Container(
        width: double.infinity,
        height: 90,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white.withOpacity(.5), width: 2.5),
            borderRadius: BorderRadius.circular(15)),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              DoubleTextColumn(
                text1: "Track",
                text2: "27",
              ),
              DoubleTextColumn(
                text1: "Style",
                text2: "Experimental",
              ),
              DoubleTextColumn(
                text1: "Album",
                text2: "6",
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding _titleText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 4),
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontSize: 28, fontWeight: FontWeight.w700),
      ),
    );
  }

  Widget _headerWidget2(String imageUrl) {
    return PreferredSize(
      preferredSize: const Size(double.infinity, 200),
      child: CircularRevealAnimation(
        centerOffset: Offset(MediaQuery.of(context).size.width, 300),
        animation: animation,
        child: SizedBox(
            child: Image.asset(
          imageUrl,
          height: 300,
          width: double.infinity,
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}
