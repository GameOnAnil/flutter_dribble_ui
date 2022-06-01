import 'package:dribble_ui_practice/circle_animation_page.dart';
import 'package:dribble_ui_practice/design_one/home_page/home_page.dart';
import 'package:dribble_ui_practice/design_three/sports_home_page.dart';
import 'package:dribble_ui_practice/design_two/screens/bank_home_page.dart';
import 'package:flutter/material.dart';

import 'dashboard/dashboard.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          "/": ((context) => const DashboardPage()),
          "/food": ((context) => const HomePage()),
          "/bank": ((context) => const BankHomePage()),
          "/sports": ((context) => const SportHomePage()),
          "/test": ((context) => const CircleAnimationPage()),
        },
        initialRoute: "/sports");
  }
}
