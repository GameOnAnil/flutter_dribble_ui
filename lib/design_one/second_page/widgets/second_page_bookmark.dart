import 'package:dribble_ui_practice/design_one/second_page/widgets/title_text.dart';
import 'package:dribble_ui_practice/utils/colors.dart';
import 'package:flutter/material.dart';

class SecondPageBookmark extends StatelessWidget {
  const SecondPageBookmark({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: TitleText(text: "Bookmarks", textSize: 22),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Row(
                  children: const [
                    Icon(Icons.bookmark_border_outlined),
                    Text("154")
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.delete_outline,
                size: 30,
                color: MyColors.mainColor,
              ),
              const SizedBox(
                width: 5,
              ),
              Icon(
                Icons.logout_outlined,
                size: 30,
                color: MyColors.mainColor,
              ),
              const SizedBox(
                width: 5,
              ),
              Icon(
                Icons.arrow_upward_outlined,
                size: 30,
                color: MyColors.mainColor,
              ),
              const SizedBox(
                width: 5,
              ),
            ],
          )
        ],
      ),
    );
  }
}
