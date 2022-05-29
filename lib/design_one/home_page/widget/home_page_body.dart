import 'package:dribble_ui_practice/utils/colors.dart';
import 'package:flutter/material.dart';

import 'custom_grid_tile.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            GridCustomTile(
              image: "assets/lightbulb.png",
              color: MyColors.blueColor,
              textColor: MyColors.blueColorDark,
              title: "New Idea",
            ),
            GridCustomTile(
              image: "assets/music.png",
              color: MyColors.greenColor,
              textColor: MyColors.greenColorDark,
              title: "Music",
            ),
            GridCustomTile(
              image: "assets/monitor.png",
              color: MyColors.yellowColor,
              textColor: MyColors.yellowColorDark,
              title: "Programming",
            ),
            GridCustomTile(
              image: "assets/bake.png",
              color: MyColors.purpleColor,
              textColor: MyColors.purpleColorDark,
              title: "Cooking",
            ),
            GridCustomTile(
              image: "assets/airplane.png",
              color: MyColors.orangeColor,
              textColor: MyColors.orangeColorDark,
              title: "Cooking",
            ),
            GridCustomTile(
              image: "assets/atom-symbol.png",
              color: MyColors.blueColor,
              textColor: MyColors.blueColorDark,
              title: "Cooking",
            ),
          ],
        ),
      ),
    );
  }
}
