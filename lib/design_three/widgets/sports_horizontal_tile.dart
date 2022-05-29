import 'package:dribble_ui_practice/design_three/widgets/sports_button_with_icon.dart';
import 'package:dribble_ui_practice/models/sports_activity_model.dart';
import 'package:dribble_ui_practice/utils/colors.dart';
import 'package:flutter/material.dart';

class SportsHorizontalTile extends StatelessWidget {
  final SportsModel currentItem;
  const SportsHorizontalTile({
    Key? key,
    required this.currentItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            color: currentItem.isFirst
                ? MyColors.sportsNeonButton
                : Colors.white.withOpacity(.4),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SportsButtonWithIcon(
                      color: currentItem.isFirst
                          ? MyColors.sportsNeonLight
                          : MyColors.sportsButtonColor,
                      icon: Icon(
                        currentItem.icon,
                        size: 20,
                        color:
                            currentItem.isFirst ? Colors.black : Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          currentItem.title,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: currentItem.isFirst
                                  ? Colors.black
                                  : Colors.white,
                              fontSize: 18),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          currentItem.time,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: currentItem.isFirst
                                  ? Colors.black.withOpacity(.5)
                                  : Colors.white.withOpacity(.5),
                              fontSize: 12),
                        ),
                      ],
                    )
                  ],
                ),
                SportsButtonWithIcon(
                  color: currentItem.isFirst
                      ? MyColors.sportsNeonLight
                      : MyColors.sportsButtonColorLight,
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: currentItem.isFirst ? Colors.black : Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
