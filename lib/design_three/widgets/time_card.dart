import 'package:dribble_ui_practice/models/time_model.dart';
import 'package:dribble_ui_practice/utils/colors.dart';
import 'package:flutter/material.dart';

class TimeCard extends StatelessWidget {
  final TimeModel timeModel;
  const TimeCard({
    Key? key,
    required this.timeModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          timeModel.isSelected
              ? const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 30,
                )
              : const SizedBox(
                  width: 10,
                ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: timeModel.isSelected ? MyColors.sportsButtonColor : null,
                borderRadius: BorderRadius.circular(20),
              ),
              width: 80,
              height: 80,
              child: Center(
                  child: Text(
                timeModel.time,
                style: const TextStyle(color: Colors.white),
              )),
            ),
          ),
          timeModel.isSelected
              ? const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 30,
                  ),
                )
              : const SizedBox(
                  width: 10,
                ),
        ],
      ),
    );
  }
}
