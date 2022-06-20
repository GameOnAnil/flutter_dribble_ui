class MobileSkin {
  final String url;
  final String route;
  MobileSkin({
    required this.url,
    required this.route,
  });
}

List<MobileSkin> mobileList = [
  MobileSkin(url: "assets/images/design1.png", route: "/food"),
  MobileSkin(url: "assets/images/design2.png", route: "/bank"),
  MobileSkin(url: "assets/images/design3.png", route: "/sports"),
  MobileSkin(url: "assets/images/design4.png", route: "/d4"),
];
