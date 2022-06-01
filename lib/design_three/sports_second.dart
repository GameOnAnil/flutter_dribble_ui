import 'package:dribble_ui_practice/design_three/sports_third_page.dart';
import 'package:dribble_ui_practice/design_three/widgets/sports_arrow_button.dart';
import 'package:dribble_ui_practice/design_three/widgets/sports_dot_button.dart';
import 'package:dribble_ui_practice/design_three/widgets/sports_horizontal_tile.dart';
import 'package:dribble_ui_practice/design_three/widgets/time_card.dart';
import 'package:dribble_ui_practice/models/sports_activity_model.dart';
import 'package:dribble_ui_practice/models/time_model.dart';
import 'package:dribble_ui_practice/utils/colors.dart';
import 'package:fl_chart/fl_chart.dart';
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
                buildGraph(),
                const TimeListView(),
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

  Widget buildGraph() {
    return SizedBox(
      width: double.infinity,
      height: 250,
      child: Stack(
        children: [
          LineChart(
            LineChartData(
              minX: 0,
              maxX: 15,
              minY: 0,
              maxY: 6,
              borderData: FlBorderData(show: false),
              titlesData: FlTitlesData(show: false),
              gridData: FlGridData(show: false),
              lineBarsData: [
                LineChartBarData(
                  spots: [
                    const FlSpot(0, 3),
                    const FlSpot(1.7, 2),
                    const FlSpot(2.6, 2.7),
                    const FlSpot(4, 2),
                    const FlSpot(5.4, 3.8),
                    const FlSpot(7.5, 1),
                    const FlSpot(10, 6),
                    const FlSpot(13.5, 3.5),
                    const FlSpot(15, 4.5),
                  ],
                  dotData: FlDotData(
                    show: true,
                    checkToShowDot: (spot, bardata) {
                      if (spot == const FlSpot(4.9, 5)) {
                        return true;
                      }
                      return false;
                    },
                    getDotPainter: (spot, percent, barData, index) {
                      return FlDotCirclePainter(
                          radius: 7,
                          color: MyColors.sportsNeonButton,
                          strokeColor: Colors.white,
                          strokeWidth: 3);
                    },
                  ),
                  isCurved: true,
                  barWidth: 2,
                  color: MyColors.sportsNeonBright,
                  belowBarData: BarAreaData(
                      show: true,
                      color: MyColors.sportsNeonButton.withOpacity(.1)),
                )
              ],
            ),
          ),
          Positioned(
            right: 20,
            top: 0,
            bottom: 0,
            child: verticalLineWithDot(),
          )
        ],
      ),
    );
  }

  Widget verticalLineWithDot() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 8,
            height: 8,
            color: Colors.white.withOpacity(.9),
          ),
          Expanded(
            child: Container(
              width: 2,
              height: double.infinity,
              color: Colors.white.withOpacity(.7),
            ),
          ),
          Container(
            width: 8,
            height: 8,
            color: Colors.white.withOpacity(.9),
          ),
        ],
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

class TimeListView extends StatefulWidget {
  const TimeListView({
    Key? key,
  }) : super(key: key);

  @override
  State<TimeListView> createState() => _TimeListViewState();
}

class _TimeListViewState extends State<TimeListView> {
  void selectItem(int position, bool isSelected) {
    setState(() {
      final currentTime = timeList[position];

      final newList = timeList.map((time) {
        if (time == currentTime) {
          return TimeModel(time: currentTime.time, isSelected: isSelected);
        }
        return TimeModel(time: time.time, isSelected: false);
      }).toList();
      timeList = newList;
    });
  }

  List<TimeModel> timeList = [];

  @override
  void initState() {
    super.initState();
    List<TimeModel> timeList2 = [
      TimeModel(time: "05:00", isSelected: false),
      TimeModel(time: "06:00", isSelected: true),
      TimeModel(time: "07:00", isSelected: false),
      TimeModel(time: "08:00", isSelected: false),
      TimeModel(time: "09:00", isSelected: false),
    ];
    timeList = timeList2;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: timeList.length,
        itemBuilder: ((context, index) {
          final currentTime = timeList[index];
          return TimeCard(
            index: index,
            timeModel: currentTime,
            isSelected: () => selectItem(index, !currentTime.isSelected),
          );
        }),
      ),
    );
  }
}
