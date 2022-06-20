import 'package:carousel_slider/carousel_slider.dart';
import 'package:dribble_ui_practice/design_four/widgets/bank_card.dart';
import 'package:dribble_ui_practice/utils/colors.dart';
import 'package:flutter/material.dart';

class D4Home extends StatelessWidget {
  const D4Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text("Home Page"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                MyColors.backgroundColor1,
                MyColors.backgroundColor2,
                MyColors.backgroundColor2,
                MyColors.backgroundColor3,
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              stops: const [0, 0.4, 0.7, 1]),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 110,
            ),
            buildHeader(),
            _chipList(context),
            _musicianText(),
            _caroucelPart(context),
            const HomeNavBar(),
          ],
        ),
      ),
    );
  }

  Expanded _caroucelPart(BuildContext context) {
    return Expanded(
      child: CarouselSlider(
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height,
          viewportFraction: 0.8,
          enableInfiniteScroll: true,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.scale,
        ),
        items: const [
          BandCard(
            title: "BTS",
            imageUrl: "assets/images/bts.jpg",
          ),
          BandCard(
            title: "TWICE",
            imageUrl: "assets/images/twice.png",
          ),
        ],
      ),
    );
  }

  Padding _musicianText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Best Musician",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          Text(
            "See All",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.purple),
          )
        ],
      ),
    );
  }

  SizedBox _chipList(BuildContext context) {
    return SizedBox(
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          D4Chip(
            title: "Musician",
            isSelected: true,
          ),
          D4Chip(
            title: "Comidian",
            isSelected: false,
          ),
          D4Chip(
            title: "Singer",
            isSelected: false,
          )
        ],
      ),
    );
  }

  Padding buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.3),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: [
              Icon(
                Icons.search,
                size: 35,
                color: Colors.white.withOpacity(.9),
              ),
              const SizedBox(width: 10),
              Text(
                "Search by person",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.white.withOpacity(.7)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class D4Chip extends StatelessWidget {
  final String title;
  final bool isSelected;
  const D4Chip({
    Key? key,
    required this.title,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Center(
        child: Container(
          width: 160,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: (isSelected) ? Colors.purple : Colors.white.withOpacity(.3),
          ),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HomeNavBar extends StatefulWidget {
  const HomeNavBar({Key? key}) : super(key: key);

  @override
  State<HomeNavBar> createState() => _HomeNavBarState();
}

class _HomeNavBarState extends State<HomeNavBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _tween;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _tween = Tween<double>(begin: 0, end: 600).animate(_controller);

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              height: 90,
              child: Stack(
                children: [
                  Container(
                    width: _tween.value,
                    color: Colors.white.withOpacity(.15),
                  ),
                  BottomNavigationBar(
                      elevation: 0.0,
                      unselectedItemColor: Colors.white.withOpacity(.75),
                      selectedItemColor: MyColors.purpleButton,
                      backgroundColor: Colors.transparent,
                      items: const [
                        BottomNavigationBarItem(
                          // backgroundColor: Colors.transparent,
                          label: "Home",
                          icon: Icon(
                            Icons.home,
                          ),
                        ),
                        BottomNavigationBarItem(
                          backgroundColor: Colors.transparent,
                          label: "Setting",
                          icon: Icon(
                            Icons.settings,
                          ),
                        ),
                        BottomNavigationBarItem(
                          backgroundColor: Colors.transparent,
                          label: "Profile",
                          icon: Icon(Icons.person),
                        ),
                      ]),
                ],
              ),
            ),
          );
        });
  }
}
