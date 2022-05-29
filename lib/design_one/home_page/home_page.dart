import 'package:dribble_ui_practice/design_one/home_page/widget/home_page_body.dart';
import 'package:dribble_ui_practice/design_one/home_page/widget/home_page_header.dart';

import 'package:flutter/material.dart';
import 'package:dribble_ui_practice/utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: MyColors.mainColor,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined))
        ],
      ),
      body: Column(
        children: const [
          HomeHeader(),
          HomePageBody(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: MyColors.mainColor,
        unselectedItemColor: MyColors.mainColor.withOpacity(0.8),
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 35,
            ),
            label: '',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star_outline,
              size: 35,
            ),
            label: '',
            backgroundColor: Colors.green,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyColors.mainColor,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
