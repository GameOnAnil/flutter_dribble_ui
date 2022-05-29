import 'package:dribble_ui_practice/design_two/screens/bank_second_page.dart';
import 'package:dribble_ui_practice/utils/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BankHomePage extends StatelessWidget {
  const BankHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bankPrimary,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: MyColors.bankPrimary,
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   onPressed: () {},
        // ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const BankSecondPage())));
            },
            icon: const Icon(Icons.next_plan),
          )
        ],
      ),
      body: Column(children: [
        _buildHeader(),
        const Expanded(
          child: BankChart(),
        ),
        const SizedBox(
          height: 10,
        ),
        _buildChipList(context),
        const IncomeOutcomeRow(
          title: "Income",
          value: "15%",
          icon: Icons.arrow_downward,
        ),
        const IncomeOutcomeRow(
          title: "Outcome",
          value: "25%",
          icon: Icons.arrow_upward,
        ),
        const SizedBox(
          height: 50,
        )
      ]),
    );
  }

  SizedBox _buildChipList(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 55,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          BankChip(
            title: "Apr to Aug",
            isStart: true,
          ),
          BankChip(
            title: "1 month",
            isStart: false,
          ),
          BankChip(
            title: "6 month",
            isStart: false,
          ),
          BankChip(
            title: "1 year",
            isStart: false,
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Your Balance",
            style: TextStyle(
                color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Money Received",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "\$27500.99",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: const [
                  Text(
                    "15%",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.arrow_downward,
                    color: Colors.white,
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class BankChart extends StatelessWidget {
  const BankChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LineChart(
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
              const FlSpot(2.6, 2),
              const FlSpot(4.9, 5),
              const FlSpot(7.8, 1),
              const FlSpot(10, 4),
              const FlSpot(12.5, 2.5),
              const FlSpot(15, 3),
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
                    color: MyColors.bankPink,
                    strokeColor: Colors.white,
                    strokeWidth: 3);
              },
            ),
            isCurved: true,
            barWidth: 4,
            color: MyColors.bankPink,
            belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                colors: MyColors.gradientColor,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [
                  0.1,
                  0.3,
                  1,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class IncomeOutcomeRow extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  const IncomeOutcomeRow({
    Key? key,
    required this.title,
    required this.value,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),
        ),
        Row(
          children: [
            Text(
              value,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            Icon(
              icon,
              color: Colors.white,
            )
          ],
        )
      ]),
    );
  }
}

class BankChip extends StatelessWidget {
  final bool isStart;
  final String title;
  const BankChip({
    Key? key,
    required this.title,
    required this.isStart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: isStart ? MyColors.bankPink : MyColors.bankSecondary,
          ),
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
