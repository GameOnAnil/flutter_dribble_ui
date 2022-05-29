import 'package:flutter/material.dart';

class SportsModel {
  final IconData icon;
  final String title;
  final String image;
  final String time;
  final bool isFirst;

  SportsModel(
      {required this.icon,
      required this.title,
      required this.image,
      required this.time,
      required this.isFirst});

  static List<SportsModel> sportsList = [
    SportsModel(
        icon: Icons.running_with_errors,
        title: "Running",
        image: "",
        time: "06:00 to 06:30 AM",
        isFirst: true),
    SportsModel(
        icon: Icons.restaurant,
        title: "Breakfast",
        image: "",
        time: "07:00 to 07:30 AM",
        isFirst: false),
    SportsModel(
        icon: Icons.work,
        title: "Work",
        image: "",
        time: "08:00 to 02:30 PM",
        isFirst: false),
  ];
}
