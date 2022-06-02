import 'package:dribble_ui_practice/design_one/home_page/widget/custom_list_tile.dart';
import 'package:dribble_ui_practice/design_one/second_page/widgets/second_page_bookmark.dart';
import 'package:dribble_ui_practice/design_one/second_page/widgets/second_page_header.dart';
import 'package:dribble_ui_practice/design_one/second_page/widgets/second_page_label.dart';
import 'package:dribble_ui_practice/utils/colors.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: MyColors.mainColor,
        title: const Text("Cooking"),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined))
        ],
      ),
      body: Column(
        children: [
          const SecondPageHeader(),
          const SecondPageLabelPart(),
          const SecondPageBookmark(),
          Expanded(
            child: ListView(
              children: const [
                CustomListTile(
                  isNotiGolden: false,
                  isStarGolden: false,
                  title: "Vanilla Cake",
                  image: "assets/images/vanillas.jpeg",
                ),
                CustomListTile(
                  isNotiGolden: false,
                  isStarGolden: true,
                  title: "Cup Cake",
                  image: "assets/images/cupcake.jpeg",
                ),
                CustomListTile(
                  isNotiGolden: true,
                  isStarGolden: true,
                  title: "Pan Cake",
                  image: "assets/images/pancake.webp",
                ),
                CustomListTile(
                  isNotiGolden: true,
                  isStarGolden: true,
                  title: "Donat",
                  image: "assets/images/donat.webp",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
