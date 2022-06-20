import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dribble_ui_practice/models/mobile_skin.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          "Choose App",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      bottomNavigationBar: _bottomNavBar(),
      body: Column(
        children: [
          Expanded(
            child: CarouselSlider.builder(
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height,
                viewportFraction: 0.8,
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.scale,
                onPageChanged: (index, reason) => setState(
                  () => activeIndex = index,
                ),
              ),
              itemCount: mobileList.length,
              itemBuilder: (context, index, renderIndex) {
                final currentMobileSkin = mobileList[index];
                return MobileSkinTile(
                  url: currentMobileSkin.url,
                  route: currentMobileSkin.route,
                );
              },
            ),
          ),
          AnimatedSmoothIndicator(
            activeIndex: activeIndex,
            count: mobileList.length,
            effect: const WormEffect(activeDotColor: Colors.deepPurple),
          )
        ],
      ),
    );
  }

  BottomNavigationBar _bottomNavBar() {
    return BottomNavigationBar(
      selectedItemColor: Colors.deepPurple,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
      ],
    );
  }
}

class MobileSkinTile extends StatelessWidget {
  final String url;
  final String route;
  const MobileSkinTile({
    Key? key,
    required this.url,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.pushNamed(context, route);
      }),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.67,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 15,
                offset: const Offset(0, 10),
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                offset: const Offset(-5, 0),
              )
            ],
          ),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width * 0.66,
                height: MediaQuery.of(context).size.height * 0.65,
                child: Image.asset(
                  url,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
