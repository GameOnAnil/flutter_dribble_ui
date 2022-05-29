class TimeModel {
  final String time;
  final bool isSelected;

  TimeModel({required this.time, required this.isSelected});

  static List<TimeModel> timeList = [
    TimeModel(time: "05:00", isSelected: false),
    TimeModel(time: "06:00", isSelected: true),
    TimeModel(time: "07:00", isSelected: false),
    TimeModel(time: "08:00", isSelected: false),
    TimeModel(time: "09:00", isSelected: false),
  ];
}
