import 'package:dribble_ui_practice/design_three/sports_home_page.dart';
import 'package:dribble_ui_practice/design_three/sports_third_page.dart';
import 'package:dribble_ui_practice/design_three/widgets/sports_horizontal_tile.dart';
import 'package:dribble_ui_practice/design_three/widgets/time_card.dart';
import 'package:dribble_ui_practice/models/sports_activity_model.dart';
import 'package:dribble_ui_practice/models/time_model.dart';
import 'package:dribble_ui_practice/utils/colors.dart';
import 'package:flutter/material.dart';

class SportsSecond extends StatelessWidget {
  const SportsSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                appBar(context),
                header(),
                Container(
                  width: double.infinity,
                  height: 250,
                  color: Colors.white,
                ),
                timeListView(),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Activity At this Time",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                activityListView(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox activityListView() {
    return SizedBox(
      height: 600,
      child: ListView.builder(
          itemCount: SportsModel.sportsList.length,
          itemBuilder: ((context, index) {
            final currentModel = SportsModel.sportsList[index];
            return SportsHorizontalTile(
              currentItem: currentModel,
            );
          })),
    );
  }

  SizedBox timeListView() {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: TimeModel.timeList.length,
        itemBuilder: ((context, index) {
          final currentTime = TimeModel.timeList[index];
          return TimeCard(
            timeModel: currentTime,
          );
        }),
      ),
    );
  }

  Row header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Scanning",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Text(
              "result",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Scanned at 16:23 PM",
              style: TextStyle(
                fontSize: 17,
                color: Colors.white.withOpacity(.6),
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "105",
                style: TextStyle(
                  fontSize: 30,
                  color: MyColors.sportsNeonButton,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "mg/dl",
                style: TextStyle(
                  fontSize: 20,
                  color: MyColors.sportsNeonButton,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget appBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SportsArrowButton(
            onTap: () {
              Navigator.pop(context);
            },
          ),
          SportsDotButton(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const SportsThirdPage())));
            },
          ),
        ],
      ),
    );
  }
}
