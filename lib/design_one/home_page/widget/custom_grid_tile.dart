import 'package:dribble_ui_practice/design_one/second_page/second_page.dart';
import 'package:flutter/material.dart';

class GridCustomTile extends StatelessWidget {
  final Color textColor;
  final Color color;
  final String title;
  final String image;
  const GridCustomTile({
    Key? key,
    required this.color,
    required this.title,
    required this.textColor,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SecondPage()));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(30)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.6),
                  radius: 45,
                  child: Image.asset(
                    image,
                    width: 40,
                    height: 40,
                    color: textColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 20,
                      color: textColor,
                      fontWeight: FontWeight.w600),
                )
              ]),
        ),
      ),
    );
  }
}
