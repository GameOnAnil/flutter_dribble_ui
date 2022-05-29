import 'package:dribble_ui_practice/design_one/second_page/widgets/custom_chip.dart';
import 'package:dribble_ui_practice/design_one/second_page/widgets/title_text.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class SecondPageLabelPart extends StatelessWidget {
  const SecondPageLabelPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TitleText(text: "Labels", textSize: 22),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Center(
                    child: Container(
                      height: 40,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: MyColors.mainColor, width: 2),
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        Icons.add,
                        size: 30,
                        color: MyColors.mainColor,
                      ),
                    ),
                  ),
                ),
                const CustomChip(
                  text: "All",
                  isSelected: true,
                ),
                const CustomChip(
                  text: "Cake",
                  isSelected: false,
                ),
                const CustomChip(
                  text: "Fast Food",
                  isSelected: false,
                ),
                const CustomChip(
                  text: "Kabab",
                  isSelected: false,
                ),
                const CustomChip(
                  text: "Kfc",
                  isSelected: false,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
